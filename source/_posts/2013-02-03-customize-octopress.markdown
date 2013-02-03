---
layout: post
title: "Octopressのカスタマイズ"
date: 2013-02-03 14:17
comments: true
categories:
- Octopress
---

##目次
1. サイドバーにタグクラウドを追加
2. 新規ページを作成
3. 「続きを読む」を表示

<!-- more -->

##本論
###1. サイドバーにタグクラウドを追加
#####プラグインのインストール
tokkonopapaさんの[octopress-tagcloud][1]を使わしてもらう。<br />
３つのファイル（tag_cloud.rb、category_list.html、tag_cloud.html）を以下のディレクトリにコピー。<br />
./plugins/tag_cloud.rb<br />
./source/_includes/custom/asides/category_list.html<br />
./source/_includes/custom/asides/tag_cloud.html

####CSSの編集
./sass/custom/_styles.scssを以下のように編集
{% include_code _styles.scss %}

####_config.ymlの編集
	default_asides: [..., custom/asides/tag_cloud.html, custom/asides/tag_cloud.html]

** この辺の情報が役に立った **  <br />
- [Octopress用Tag Cloudプラグインをリリースします][2]

###2. 新規ページを作成
####ファイルの作成
	$ bundle exec rake new_page['ファイル名']

####ナビゲーションの編集
source/_includes/custom/navigation.htmlに新規作成したページへのリンクを追加
{% include_code navigation.html %}

** この辺の情報が役に立った **  <br />
- [Octopressで新規ページを作成してみよう！][3]

###3. 「続きを読む」を表示
####_config.ymlをのexcerpt_linkを以下のように変更
{% include_code _config.yml %}

####記事の編集
記事を以下のように編集
	# 上の内容までがトップページに表示 #
	<!-- more -->
	# 下の内容が個別の記事のページに表示 #

** この辺の情報が役に立った **  <br />
- [5分でできる簡単 Octopress セッティング][4]

##参照
- [octopress-tagcloud][1]
- [Octopress用Tag Cloudプラグインをリリースします][2]
- [Octopressで新規ページを作成してみよう！][3]
- [5分でできる簡単 Octopress セッティング][4]


<!-- 参照 -->
[1]: https://github.com/tokkonopapa/octopress-tagcloud "octopress-tagcloud"
[2]: http://tokkonopapa.github.com/blog/2012/01/04/octopress-plugin-for-categories-cloud/ "Octopress用Tag Cloudプラグインをリリースします"
[3]: http://qiita.com/items/4b9b6efd9d52d904986c "Octopressで新規ページを作成してみよう！"
[4]: http://morizyun.github.com/blog/octopress-hatena-disqus-new-tab/ "5分でできる簡単 Octopress セッティング"