# ActiveAdmin�ɂ���
## ActiveAdmin�Ƃ́H
"�Ǘ���ʗp�v���O�C��"
View����������A�����{�b�N�X���������Ȃǂ̍�Ƃ��ȗ��ł���I

�f�t�H���g�ňȉ��̋@�\���t��  
  �E���R�[�h�̃\�[�g�@�\  
  �E���R�[�h�̌���(�t�B���^�@�\)  
  �ECSV,XML,JSON�o�͋@�\  
  �E���R�[�h��CRUD�@�\  
  �E���R�[�h�ɑ΂��ẴR�����g�@�\  


## ���ۂɓ������Ă݂悤�I
### 1.Gemfile��ҏW

�ˑ��֌W������̂ŁAdevise���������̏ꍇ�͈ꏏ�ɓ���
<Gemfile>
```
  gem 'activeadmin', github: 'activeadmin'
  gem 'inherited_resources', github: 'activeadmin/inherited_resources'
  gem 'devise' # if you need
```
��Devise���g�p���Ă邪�A�g�p�������Ȃ��ꍇ��--skip-users��t�^���Ă�������
�urails g active_admin:install --skip-users�v
inherited_resources:  
  ���ꂪ Gemfile �Ɋ܂܂�Ă��āA�Ώۂ̃R���g���[���[�� inherit_resources��L���ɂ��Ă���ꍇ�A  
  �f�t�H���g�� index, new, edit, show, create, update, destroy ���ȗ��ł���悤�ɂȂ��Ă���B  
  ���L���ɂ�����@  
  
device:
  ���[�U�[���O�C���A�p�X���[�h��Y��̍Đݒ�A�A�J�E���g���b�N�Ȃǂ̔F�،n�A�v���ɕK�v�ȋ@�\���ȒP�ɒǉ��ł���B
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
### 2.bundle install
```
  bundle install
```

### 3.�W�F�l���[�g�R�}���h�ŃC���X�g�[�������s�I
```
  rails g active_admin:install
```

### 4.DB migration
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

### 5.����m�F
```
  bundle exec rails s
```

# �Q�l�T�C�gURL
https://qiita.com/haneri/items/d9d8d2dfa239a7f2461d  
https://blog.mmmcorp.co.jp/blog/2015/02/18/activeadmin/

http://mpiyok.hatenablog.com/entry/2015/09/15/220653