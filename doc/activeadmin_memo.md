# ActiveAdminについて

## 1.Gemfileを編集

依存関係があるので、deviseが未導入の場合は一緒に導入
<Gemfile>
```
  gem 'activeadmin', github: 'activeadmin'
  gem 'inherited_resources', github: 'activeadmin/inherited_resources'
  gem 'devise' # if you need
```
inherited_resources:  
  これが Gemfile に含まれていて、対象のコントローラーが inherit_resourcesを有効にしている場合、  
  デフォルトの index, new, edit, show, create, update, destroy が省略できるようになっている。  
  →有効にする方法  
```
      class ProjectsController < InheritedResources::Base  
      end  
```

    または  

```
      class ProjectsController < ApplicationController  
        inherit_resources  
      end  
```
## 2.bundle install
```
  bundle install
```

## 3.ジェネレートコマンドでインストーラを実行！
```
  rails g active_admin:install
```

## 4.DB migration
  AdminUserモデルのmigrationファイルが生成され、seed.rbに初期ユーザのseedが追記されているんで反映させる。
  初期管理者ユーザの情報はseedファイルを編集しておけば変更できる。
  
  db/seed.rb
  ```
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  ```
  
### migrationを実行
```
  rails db:migrate
  rails db:seed
```

## 5.動作確認
```
  bundle exec rails s
```

# 参考サイトURL
https://qiita.com/haneri/items/d9d8d2dfa239a7f2461d