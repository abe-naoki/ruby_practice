# いろいろなgemメモ

## ■devise
  ユーザ登録、ログイン、パスワード再設定、アカウントロックなど
  認証系アプリに必要な機能を簡単に追加できるgem。
```
  gem 'devise'
```
  
### 【参考サイトURL】
  https://qiita.com/cigalecigales/items/73d7bd7ec59a001ccd74
  https://qiita.com/Salinger/items/873e3c667462746ae707

## ■pundit
Punditというgemを使ってRailsに認可の仕組みを作る。
リソースに対して誰が許可されるのかを定義します。
cancancanがコントローラ寄りに対して、Punditはモデル寄りの責務。

### 認可の仕組みについて
Punditは、コントローラの各アクションで「Authorize リソースオブジェクト」を呼ぶと対象のリソースに対して権限が
あるかを確認してくれます。そのポリシーを"app/policies"にあるポリシーファイルで細かく定義することができます。

### ポリシーファイル
「コントローラのアクション ＋ ？」のメソッドを定義し、返り値が"true"なら許可、"false"なら拒否になります。
例はArticleControllerのindexアクションは必ず拒否されて、Pundit::NotAuthorizedErrorの例外が投げられる。
（独自のアクションも同様で定義できます）
  class ArticlePolicy < ApplicationPolicy
```
    def index?
      false
    end
  end
```
コントローラで以下のように使う。
```
 authorize Article
 authorize @article
```

### 【参考サイトURL】
https://qiita.com/zaru/items/8bf7b41b33f3f55bd27d
http://llcc.hatenablog.com/entry/2016/01/05/233721

## ■ransack
Railsアプリで検索機能を実装する。

searchの書き方
Item.seerch(:name_cont => 'ほげ').result.to_sql
```
  eq:等しいものにマッチします。
  It:ある値より小さいものにマッチします。（←gteqだと「以下」になる）
  in:SQLのinです。含まれるものにマッチします。（←not_inで「含まれないもの」になります。）
  cont:【特定の文字列が先頭のもの」になります。（←not_contで「文字列が含まれないもの」）
```
### 組み合わせ
複数の属性を組み合わせる場合は、andまたはorで繋ぐ。

### 【参考サイトURL】
https://qiita.com/nysalor/items/9a95d91f2b97a08b96b0
https://qiita.com/nishina555/items/2c1f8bae980e426519bc

## ■slim
拡張子は".slim"
RubyのテンプレートエンジンでHTMLタグを短く書くことができる。

### slim環境を用意する
```
  gem install slim
```

### slimの簡単な覚え方
 1.通所のHTMLから「<,>,/>」を取り除いた
 2.doctype
 3.テキストと｜（パイプ）の扱い
 4.コメント
 
### 【参考サイトURL】
https://qiita.com/yterajima/items/53fd0387279510ff082a
https://qiita.com/pugiemonn/items/b64171952d958dc4d6be
