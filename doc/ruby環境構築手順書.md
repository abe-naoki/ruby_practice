# Ruby環境構築手順書

## yumインストール
```
**リポジトリ追加**
yum install epel-release

**nodejsとnpmをインストール**
yum install nodejs npm --enablerepo=epel

**npmで使うパッケージもあるのでc++を入れる**
yum install gcc gcc-c++
```

## Rubyのインストール
  rubyのバージョン確認
  rbenv install -l

## rubyのインストール
  rbenv install 2.3.1

  rbenvの切替え
  rbenv global 2.3.1

## gemのインストール
```
  gem install rbenv-rehash
  
  gem install bundler
  
  gem install rails
```
アプリケーション用のディレクトリを作成
mkdir firstone
移動
cd firstep

railsのアプリケーションのテンプレート作成
rails new アプリケーション名

bundle install --path vendor/bundle

サーバ起動
bundle exec rails s


ユーザ管理機能の一通りを作成するコマンド
bundle exec rails g scaffold user name:string age:integer email:string address:string