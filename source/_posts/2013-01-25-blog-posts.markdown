---
layout: post
title: "Octopressで記事を投稿"
date: 2013-01-25 21:49
comments: true
categories:
- Octopress
---

##目次
1. _config.ymlの編集
2. markdownファイルの生成
3. 記事を書く
4. デプロイ

##本論
###1. _config.ymlの編集
ページのタイトルとか色々な設定は_config.ymlに記述する。

** この辺の情報が役に立った **  <br />
- [Octopress Configuring Octopress][2]


###2. markdownファイルの生成
まず、記事の原稿となるmarkdownファイルを生成する。
	$ bundle exec rake new_post['Blog Title']

すると、source/_postsに2013-01-25-blog-title.markdownというファイルが生成される。


###3. 記事を書く
とりあえず、記事のタイトルとカテゴリーを編集する。
	---
	layout: post
	title: "Octopressの環境構築"
	date: 2013-01-25 14:35
	comments: true
	categories:
	- Octopress
	- 環境構築
	---

あとは、markdownで記事を書く。

** この辺の情報が役に立った **  <br />
- [Markdown文法の全訳][3]


###4. デプロイ
記事を投稿するのは以下のコマンド
	$ bundle exec rake generate
	$ bundle exec rake deploy
ちなみに、
	$ bundle exec rake gen_deploy
でもOK。


##参照
- [githubとOctopressでブログをはじめる方法][1]
- [Octopress Configuring Octopress][2]
- [Markdown文法の全訳][3]

<!-- 参照 -->
[1]: http://kbaba1001.github.com/blog/2012/06/05/githubtooctopressdeburoguwohazimerufang-fa/ "githubとOctopressでブログをはじめる方法"
[2]: http://octopress.org/docs/configuring/ "Octopress Configuring Octopress"
[3]: http://blog.2310.net/archives/6 "Markdown文法の全訳"


