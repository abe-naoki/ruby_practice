# Ruby���\�z�菇��

## 1.yum�C���X�g�[��
```
  ���|�W�g���ǉ�  
  yum install epel-release

  nodejs��npm���C���X�g�[��
  yum install nodejs npm --enablerepo=epel

  npm�Ŏg���p�b�P�[�W������̂�c++������
  yum install gcc gcc-c++
```

## 2.Ruby�̃C���X�g�[��
```
  Ruby�̃o�[�W�����m�F  
  rbenv install -l

  rbenv�ɂăC���X�g�[��  
  rbenv install 2.3.1

  rbenv�̐ؑւ�  
  rbenv global 2.3.1
```

## 3.gem�̃C���X�g�[��
```
  //gem install rbenv-rehash �� �i���ŐV��rbenv�{�̂ɂ͑g�ݍ��܂ꂽ�̂ŕs�v�j
  
  gem install bundler
  
  gem install rails
```
## 4.�A�v���P�[�V�����p�̃f�B���N�g�����쐬
  mkdir firstone  
�ړ�  
  cd firstep

## 5.rails�̃A�v���P�[�V�����̃e���v���[�g�쐬  
  rails new �A�v���P�[�V������

## 6.�o���h���C���X�g�[�������{�iPATH���w��j
  bundle install --path vendor/bundle

## 7.�T�[�o�N��  
  bundle exec rails s

## 8.���[�U�Ǘ��@�\�̈�ʂ���쐬����R�}���h  
  bundle exec rails g scaffold user name:string age:integer email:string address:string