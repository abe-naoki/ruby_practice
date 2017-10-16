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
  epel�F  
   ���[�U�[����y��Linux�𗘗p�ł���悤�ɁAOS�̓���ɕK�v�ȃ��C�u�����[��\�t�g�E�F�A�Ȃǂ��܂Ƃ߂��p�b�P�[�W  
  node.js�F  
   Node.js�̓T�[�o�T�C�hJavaScript�B�m���u���b�L���OI/O�ƃC�x���g���[�v�Ƃ�����̃��f���ɂ��A��ʂ̏����ɑΉ��ł���B  
  npm�iNode Packaged Modules(npm)�j�F  
   Node.js�̃��C�u������p�b�P�[�W���Ǘ����邱�Ƃ��ł���c�[��  
  gcc�F  
   UNIX�CWindows�Ȃǂœ��삷��t���[ �̃R���p�C���ł���B  
  gcc-c++�F  
   gcc-c++�p�b�P�[�W���C���X�g�[�����邱�Ƃ�g++�R���p�C���𗘗p�ł��܂��B  
    ��g++��GNU GCC (GNU�R���p�C���R���N�V����) �� C++ �R���p�C���R�}���h(C++�R���p�C��)  

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
```
  mkdir [�C�ӂ̃f�B���N�g����]  
  cd [�쐬�����f�B���N�g��]
```

## 5.rails�̃A�v���P�[�V�����̃e���v���[�g�쐬  
  rails new �A�v���P�[�V������  
  ���v���W�F�N�g���Ƀf�B���N�g�������B

## 6.bundle install�����{�iPATH���w��j
```
  bundle install --path vendor/bundle �� �ivendor/bundler�z����gem���C���X�g�[�����܂��B�j  
  ��bundler�ɃI�v�V������n����gem��C�ӂ̃f�B���N�g���ɃC���X�g�[�����Agem��Rails�v���W�F�N�g���ɊǗ�����  
  ���v���W�F�N�g����rails�̃o�[�W�������Ⴄ���Ƃɑ΂��Ă̕s����������B  
```

## 7.�T�[�o�N��
  bundle exec rails s  
  ��Rails�ɕt�����Ă���WEBrick���T�[�o�Ƃ��ċN��

## 8.���[�U�Ǘ��@�\�̈�ʂ���쐬����R�}���h  
  bundle exec rails g scaffold user name:string age:integer email:string address:string