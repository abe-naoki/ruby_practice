# Ruby���\�z�菇��

## yum�C���X�g�[��
```
  ���|�W�g���ǉ�  
  yum install epel-release

  nodejs��npm���C���X�g�[��
  yum install nodejs npm --enablerepo=epel

  npm�Ŏg���p�b�P�[�W������̂�c++������
  yum install gcc gcc-c++
```

## Ruby�̃C���X�g�[��
```
  ruby�̃o�[�W�����m�F  
  rbenv install -l

  rbenv�ɂăC���X�g�[��  
  rbenv install 2.3.1

  rbenv�̐ؑւ�  
  rbenv global 2.3.1
```

## gem�̃C���X�g�[��
```
  ~~gem install rbenv-rehash~~ �� rbenv�{�̂ɑg�ݍ��܂ꂽ�̂ŕs�v
  
  gem install bundler
  
  gem install rails
```
�A�v���P�[�V�����p�̃f�B���N�g�����쐬
mkdir firstone
�ړ�
cd firstep

rails�̃A�v���P�[�V�����̃e���v���[�g�쐬  
rails new �A�v���P�[�V������

�o���h���C���X�g�[�������{�iPATH���w��j
bundle install --path vendor/bundle

�T�[�o�N��  
bundle exec rails s


���[�U�Ǘ��@�\�̈�ʂ���쐬����R�}���h  
bundle exec rails g scaffold user name:string age:integer email:string address:string