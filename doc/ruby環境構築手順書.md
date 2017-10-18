# Ruby環境構築手順書

## 1.yumインストール
```
  リポジトリ追加  
  yum install epel-release

  nodejsとnpmをインストール  
  yum install nodejs npm --enablerepo=epel

  npmで使うパッケージもあるのでc++を入れる  
  yum install gcc gcc-c++
```
  epel：  
   ユーザーが手軽にLinuxを利用できるように、OSの動作に必要なライブラリーやソフトウェアなどをまとめたパッケージ  
  node.js：  
   Node.jsはサーバサイドJavaScript。ノンブロッキングI/Oとイベントループという二つのモデルにより、大量の処理に対応できる。  
  npm（Node Packaged Modules(npm)）：  
   Node.jsのライブラリやパッケージを管理することができるツール  
  gcc：  
   UNIX，Windowsなどで動作するフリー のコンパイラである。  
  gcc-c++：  
   gcc-c++パッケージをインストールすることでg++コンパイラを利用できます。  
    →g++はGNU GCC (GNUコンパイラコレクション) の C++ コンパイラコマンド(C++コンパイラ)  

## 2.Rubyのインストール
```
  Rubyのバージョン確認  
  rbenv install -l

  rbenvにてインストール  
  rbenv install 2.3.1

  rbenvの切替え  
  rbenv global 2.3.1
```

## 3.gemのインストール
```
  //gem install rbenv-rehash ← （※最新のrbenv本体には組み込まれたので不要）
  
  gem install bundler
  
  gem install rails
```
## 4.アプリケーション用のディレクトリを作成
```
  mkdir [任意のディレクトリ名]  
  cd [作成したディレクトリ]
```

## 5.railsのアプリケーションのテンプレート作成  
  rails new アプリケーション名  
  ※プロジェクト毎にディレクトリを作る。

## 6.bundle installを実施（PATHも指定）
```
  bundle install --path vendor/bundle ← （vendor/bundler配下にgemをインストールします。）  
  ※bundlerにオプションを渡してgemを任意のディレクトリにインストールし、gemをRailsプロジェクト毎に管理する  
  ※プロジェクト毎にrailsのバージョンが違うことに対しての不具合を避けられる。  
```

## 7.サーバ起動
  bundle exec rails s  
  ※Railsに付随しているWEBrickをサーバとして起動

## 8.ユーザ管理機能の一通りを作成するコマンド  
  bundle exec rails g scaffold user name:string age:integer email:string address:string