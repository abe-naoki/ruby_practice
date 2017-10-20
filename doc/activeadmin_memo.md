# ActiveAdmin�ɂ���

## 1.Gemfile��ҏW

�ˑ��֌W������̂ŁAdevise���������̏ꍇ�͈ꏏ�ɓ���
<Gemfile>
```
  gem 'activeadmin', github: 'activeadmin'
  gem 'inherited_resources', github: 'activeadmin/inherited_resources'
  gem 'devise' # if you need
```
inherited_resources:  
  ���ꂪ Gemfile �Ɋ܂܂�Ă��āA�Ώۂ̃R���g���[���[�� inherit_resources��L���ɂ��Ă���ꍇ�A  
  �f�t�H���g�� index, new, edit, show, create, update, destroy ���ȗ��ł���悤�ɂȂ��Ă���B  
  ���L���ɂ�����@  
```
      class ProjectsController < InheritedResources::Base  
      end  
```

    �܂���  

```
      class ProjectsController < ApplicationController  
        inherit_resources  
      end  
```
## 2.bundle install
```
  bundle install
```

## 3.�W�F�l���[�g�R�}���h�ŃC���X�g�[�������s�I
```
  rails g active_admin:install
```

## 4.DB migration
  AdminUser���f����migration�t�@�C������������Aseed.rb�ɏ������[�U��seed���ǋL����Ă����Ŕ��f������B
  �����Ǘ��҃��[�U�̏���seed�t�@�C����ҏW���Ă����ΕύX�ł���B
  
  db/seed.rb
  ```
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  ```
  
### migration�����s
```
  rails db:migrate
  rails db:seed
```

## 5.����m�F
```
  bundle exec rails s
```

# �Q�l�T�C�gURL
https://qiita.com/haneri/items/d9d8d2dfa239a7f2461d