---
layout: post
title: "Octopressの環境構築"
date: 2013-01-25 14:35
comments: true
categories:
- Octopress
- 環境構築
---

##目次
1. Dropbox内にOctopressのレポジトリをインストール
2. gemやらをインストール
3. GitHubにレポジトリを作成
4. GitHubにコミット

<!-- more -->

##本論
###1. Dropbox内にOctopressのレポジトリをインストール
	$ cd Dropbox
	$ git clone git://github.com/imathis/octopress.git octopress

###2. gemやらをインストール
	$ cd octopress
	$ gem install bundler
	$ rbenv rehash
	$ bundle install
bundle installで、RedClothがインストールできない。  <br />
　→gccがない？  <br />
Command Line Tools for Xcodeをインストールすれば解決。

** この辺の情報が役に立った **  <br />
- [OS X で rbenv を使って ruby 1.9.3 の環境を作る][1]  <br>
- [MacOS X Lion + Xcode 4.3 での gcc][2]

あとは、rakeをインストールする。
	$ rake install
ここで、rake0.9.2.2を使いたいが、rake 10.0.3がアクティベートになってるとかでエラー。
	$ bundle exec rake install
これで、解決。

** この辺の情報が役に立った **  <br />
- [人力検索はてな][3]

###3. GitHubにレポジトリを作成
'masa2sei.github.com'という名前でレポジトリを作成。


###4. GitHubにコミット
その後、
	$ bundle exec rake setup_github_pages
レポジトリのURLを聞かれるので'git@github.com:masa2sei/masa2sei.github.com.git'を指定。

あとは、
	$ bundle exec rake generate
	$ bundle exec rake deploy

[http://masa2sei.github.com/][4]にページができているはず。


##参照
- [MacでOctopressをgithub pagesにセットアップするまでに行った事][5]
- [githubとOctopressでブログをはじめる方法][6]
- [Octopressのインストールから運用管理まで][7]
- [OS X で rbenv を使って ruby 1.9.3 の環境を作る][1]
- [MacOS X Lion + Xcode 4.3 での gcc][2]
- [人力検索はてな][3]


<!-- 参照 -->
[1]: http://qiita.com/items/9dd797f42e7bea674705 "OS X で rbenv を使って ruby 1.9.3 の環境を作る"
[2]: http://geisterchor.blogspot.jp/2012/02/macos-x-lion-xcode-43-gcc.html "MacOS X Lion + Xcode 4.3 での gcc"
[3]: http://q.hatena.ne.jp/1353552605 "rails にて bundle exec rake db:migrate の「bundle exec」を付けるのと付けないのとでの違いを教えて下さい"
[4]: http://masa2sei.github.com/ "http://masa2sei.github.com/"
[5]: http://qiita.com/items/06d8e447baee99163fc3 "MacでOctopressをgithub pagesにセットアップするまでに行った事"
[6]: http://kbaba1001.github.com/blog/2012/06/05/githubtooctopressdeburoguwohazimerufang-fa/ "githubとOctopressでブログをはじめる方法"
[7]: http://tokkonopapa.github.com/blog/2011/12/30/octopress-on-github-and-bitbucket/ "Octopressのインストールから運用管理まで"
