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
  mkdir firstone  
移動  
  cd firstep

## 5.railsのアプリケーションのテンプレート作成  
  rails new アプリケーション名

## 6.バンドルインストールを実施（PATHも指定）
  bundle install --path vendor/bundle

## 7.サーバ起動  
  bundle exec rails s

## 8.ユーザ管理機能の一通りを作成するコマンド  
  bundle exec rails g scaffold user name:string age:integer email:string address:string