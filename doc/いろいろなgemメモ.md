# ���낢���gem����

## ��devise
  ���[�U�o�^�A���O�C���A�p�X���[�h�Đݒ�A�A�J�E���g���b�N�Ȃ�
  �F�،n�A�v���ɕK�v�ȋ@�\���ȒP�ɒǉ��ł���gem�B
```
  gem 'devise'
```
  
### �y�Q�l�T�C�gURL�z
  https://qiita.com/cigalecigales/items/73d7bd7ec59a001ccd74
  https://qiita.com/Salinger/items/873e3c667462746ae707

## ��pundit
Pundit�Ƃ���gem���g����Rails�ɔF�̎d�g�݂����B
���\�[�X�ɑ΂��ĒN���������̂����`���܂��B
cancancan���R���g���[�����ɑ΂��āAPundit�̓��f�����̐Ӗ��B

### �F�̎d�g�݂ɂ���
Pundit�́A�R���g���[���̊e�A�N�V�����ŁuAuthorize ���\�[�X�I�u�W�F�N�g�v���ĂԂƑΏۂ̃��\�[�X�ɑ΂��Č�����
���邩���m�F���Ă���܂��B���̃|���V�[��"app/policies"�ɂ���|���V�[�t�@�C���ōׂ�����`���邱�Ƃ��ł��܂��B

### �|���V�[�t�@�C��
�u�R���g���[���̃A�N�V���� �{ �H�v�̃��\�b�h���`���A�Ԃ�l��"true"�Ȃ狖�A"false"�Ȃ狑�ۂɂȂ�܂��B
���ArticleController��index�A�N�V�����͕K�����ۂ���āAPundit::NotAuthorizedError�̗�O����������B
�i�Ǝ��̃A�N�V���������l�Œ�`�ł��܂��j
  class ArticlePolicy < ApplicationPolicy
```
    def index?
      false
    end
  end
```
�R���g���[���ňȉ��̂悤�Ɏg���B
```
 authorize Article
 authorize @article
```

### �y�Q�l�T�C�gURL�z
https://qiita.com/zaru/items/8bf7b41b33f3f55bd27d
http://llcc.hatenablog.com/entry/2016/01/05/233721

## ��ransack
Rails�A�v���Ō����@�\����������B

search�̏�����
Item.seerch(:name_cont => '�ق�').result.to_sql
```
  eq:���������̂Ƀ}�b�`���܂��B
  It:����l��菬�������̂Ƀ}�b�`���܂��B�i��gteq���Ɓu�ȉ��v�ɂȂ�j
  in:SQL��in�ł��B�܂܂����̂Ƀ}�b�`���܂��B�i��not_in�Łu�܂܂�Ȃ����́v�ɂȂ�܂��B�j
  cont:�y����̕����񂪐擪�̂��́v�ɂȂ�܂��B�i��not_cont�Łu�����񂪊܂܂�Ȃ����́v�j
```
### �g�ݍ��킹
�����̑�����g�ݍ��킹��ꍇ�́Aand�܂���or�Ōq���B

### �y�Q�l�T�C�gURL�z
https://qiita.com/nysalor/items/9a95d91f2b97a08b96b0
https://qiita.com/nishina555/items/2c1f8bae980e426519bc

## ��slim
�g���q��".slim"
Ruby�̃e���v���[�g�G���W����HTML�^�O��Z���������Ƃ��ł���B

### slim����p�ӂ���
```
  gem install slim
```

### slim�̊ȒP�Ȋo����
 1.�ʏ���HTML����u<,>,/>�v����菜����
 2.doctype
 3.�e�L�X�g�Ɓb�i�p�C�v�j�̈���
 4.�R�����g
 
### �y�Q�l�T�C�gURL�z
https://qiita.com/yterajima/items/53fd0387279510ff082a
https://qiita.com/pugiemonn/items/b64171952d958dc4d6be
