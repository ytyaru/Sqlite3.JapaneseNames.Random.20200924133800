#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# SQLite3でランダムに日本人名をフルネームで取得する。
# CreatedAt: 2020-09-24
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	DB_PATH='Names.db'
	NUM_DEFAULT=40
	IsInt() { test 0 -eq $1 > /dev/null 2>&1 || expr $1 + 0 > /dev/null 2>&1; }
	IsInt "$1" && NUM=$1 || NUM=$NUM_DEFAULT
	[ $NUM -lt 1 ] && NUM=$NUM_DEFAULT
	SQL="$(cat <<-EOS
		select ROW_NUMBER() over (order by L.Yomi,F.Yomi) as SN,L.Yomi,F.Yomi,L.Kaki,F.Kaki,F.Sex from 
		  (select ROW_NUMBER() over (order by random(), Id) as R,Yomi,Kaki from LastNames where Id in (select Id from LastNames order by random() limit @NUM)) as L 
		  inner join  
		  (select ROW_NUMBER() over (order by random(), Id) as R,Yomi,Kaki,Sex from FirstNames where Id in (select Id from FirstNames where sex in ('m','mc','cm','c','f','fc','cf') order by random() limit @NUM)) as F
		  on L.R=F.R
		  order by L.Yomi,F.Yomi;
		EOS
	)"
#	SQL="$(cat <<-EOS
#		select L.Yomi,F.Yomi,L.Kaki,F.Kaki,F.Sex from 
#		  (select ROW_NUMBER() over (order by random(), Id) as R,Yomi,Kaki from LastNames where Id in (select Id from LastNames order by random() limit @NUM)) as L 
#		  inner join  
#		  (select ROW_NUMBER() over (order by random(), Id) as R,Yomi,Kaki,Sex from FirstNames where Id in (select Id from FirstNames where sex in ('m','mc','cm','c','f','fc','cf') order by random() limit @NUM)) as F
#		  on L.R=F.R;
#		EOS
#	)"
	sqlite3 -batch -interactive "$DB_PATH" '.mode tabs' \
		'.parameter init' \
		'.parameter set @NUM '"$NUM" \
		"$SQL"
}
Run "$@"
