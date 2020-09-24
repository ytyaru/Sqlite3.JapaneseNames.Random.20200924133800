[ja](./README.ja.md)

# JapaneseNames.Random

Randomly get the full name of the Japanese name with SQLite3.

# DEMO

```sh
$ run.sh
1	あまき	ひいろ	天毎木	秀彩	f
2	あわら	あきこ	湶	彩葵子	f
3	いえつか	はるき	家塚	青生	mc
4	いわがわ	ともひで	岩川	智偉	m
5	うえくさ	えいと	上草	慧愛	cm
6	うみふち	きみか	海渕	君佳	f
7	えびさわ	ゆみか	蛯沢	夕海夏	f
8	おおかわら	さき	大川原	皐綺	cf
9	おぎしま	みふゆ	荻嶋	真冬	f
10	かじき	かなみ	加治木	佳並	f
11	かねま	てるみ	兼間	照己	c
12	かば	ひさたか	蒲	寿孝	m
13	からさわ	かいじ	唐澤	快治	m
14	こうと	とき	児戸	翔騎	m
15	こうはら	みつか	神原	舜禾	f
16	ことうげ	なつえ	小峠	なつ江	f
17	さいうち	かいや	歳内	届也	cm
18	しおのや	せいな	塩之谷	星雪	f
19	しなおか	なる	品岡	那瑠	c
20	しょうぼ	りむ	正保	理群	m
21	じんざい	そうた	神西	蒼詩	m
22	そのい	こうき	園井	晃紀	cm
23	たかた	とわ	鷹田	留和	cf
24	たかのうち	このか	高野内	好桜	f
25	たかむき	ひさみ	高向	尚観	f
26	ただのぶ	かお	只信	禾緒	cf
27	たのうえ	みおな	田之上	巳央那	f
28	つじはた	わこう	辻畑	和晃	m
29	てらべ	るいな	寺部	琉衣奈	f
30	とのえ	むつき	外江	睦葵	c
31	なかのわたり	くにあき	中野渡	邦暁	m
32	なかわ	まお	中和	麻織	cf
33	にぐま	さちほ	二熊	紗千帆	f
34	のりつぐ	ささら	則次	早々良	f
35	ひがしだて	ともえ	東舘	登萠	f
36	ほぼ	としあき	保々	俊菊	m
37	まつぞの	まさる	松園	了	mc
38	まつみどり	ななせ	松緑	那々世	cf
39	みつま	いつき	三満	一汐	cf
40	よこすか	まなは	横須賀	愛果	f
```
```sh
$ time run.sh
...
real	0m0.569s
user	0m0.531s
sys	0m0.029s
```

# Requirement

* <time datetime="2020-09-24T13:37:58+0900">2020-09-24</time>
* [Raspbierry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B Rev 1.2
* [Raspbian](https://ja.wikipedia.org/wiki/Raspbian) buster 10.0 2019-09-26 <small>[setup](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)</small>
* bash 5.0.3(1)-release
* SQLite 3.33.0 2020-08-14 13:23:32 fca8dc8b578f215a969cd899336378966156154710873e68b3d9ac5881b0ff3f

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```

# Installation

```sh
git clone https://github.com/ytyaru/Sqlite3.JapaneseNames.Random.20200924133800
```

# Usage

```sh
cd Sqlite3.JapaneseNames.Random.20200924133800/src
./run.sh
```

# Related repositories

* [Sqlite3.JapaneseNames.Import.20200924095020](https://github.com/ytyaru/Sqlite3.JapaneseNames.Import.20200924095020)

# Author

ytyaru

* [![github](http://www.google.com/s2/favicons?domain=github.com)](https://github.com/ytyaru "github")
* [![hatena](http://www.google.com/s2/favicons?domain=www.hatena.ne.jp)](http://ytyaru.hatenablog.com/ytyaru "hatena")
* [![mastodon](http://www.google.com/s2/favicons?domain=mstdn.jp)](https://mstdn.jp/web/accounts/233143 "mastdon")

# License

This software is CC0 licensed.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.en)

