---
layout: post
title: "rails runnerを使ってみる"
date: 2013-02-01 16:43
comments: true
categories:
- Rails
- runner
---

Railsでは、rails runnerコマンドでRubyファイルを直接実行できるらしい。

基本的にはこのサイトを参考にした<br />
- [Rails3でバッチ処理を実行する][1]

<!-- more -->

###1. libディレクトリのファイルへのパスの設定
以下の設定をconfig/application.rbに追加。
	config.autoload_paths += %W(#{config.root}/lib)

###2. rails runnerコマンドで実行するプログラムの作成
libの下に以下の内容でファイルを作成
{% include_code get_rss.rb %}

参考にしたサイトではlib/tasksにファイルを作成していたが、lib以下ならどこでもいいらしい。<br />
lib/tasksには、独自のRakeタスクのみ置いた方がわかりやすいと思った。

なので、今回はlib/cron/get_rss.rbを作成。<br />
クラス名を上記のようにCron::GetRssにしないとrails runnerでエラーが起こる。<br />
たとえば、lib/pdf_stuff/receipt.rbなら、クラス名はPdfStuff::Receiptにする。

** この辺の情報が役に立った **  <br />
- RailsによるアジャイルWebアプリケーション開発　第4版 245ページ

###3. 実行
ターミナルでrails runnerコマンドを実行。
	rails runner Cron::GetRss.get_rss

##参照
- [Rails3でバッチ処理を実行する][1]
- RailsによるアジャイルWebアプリケーション開発　第4版

<!-- 参照 -->
[1]: http://www.slowlydays.net/wordpress/?p=707 "Rails3でバッチ処理を実行する"
