# Git�̊�{�I�ȃR�}���h����

## �����̃A�J�E���g���Ɋ����̃��|�W�g���̕������쐬
git fork [���|�W�g��URL]  ���i���l�p�̃��|�W�g���ɂȂ�j

## ���|�W�g���̃R�s�[
git clone [���|�W�g��URL]

## �u�����`�̍쐬
git checkout -b [�u�����`��] origin/[�u�����`��]

## git�̏�ԁi�������̂���t�@�C���j�m�F
git status

## git�̍����擾
  git fetch
  
## git�̕ύX���ꎞ�I�ɑޔ�
  git stash �� �igit add ���Ă����Ȃ��Ǝg���Ȃ��j

## �u�����`���폜
  **���폜�̍ۂ͑Ώۂ̃u�����`�ɂ��Ȃ�����!!**  
  git branch -d [�u�����`��]

## �u�����`���폜�i���}�[�W�������ǂ�����킸�ɋ����폜�j
  git branch -D [�u�����`��]

## �����[�g�u�����`�̍폜
  git push --delete origin [�u�����`��]
  
## git��push���폜�i�t�@�C���͎c�����܂܁j
  git git rm --cached -r [�t�@�C����]

## �ύX���e�������[�g���|�W�g����push����܂ł̗���
```
  git add .  
  git commit  
  git push  
```

## �V�K�u�����`�쐬�܂ł̎菇
```
  Pull Request�p�u�����`���쐬  
  git checkout -b [�u�����`��]  
  git add . ���ύX���e��add����  
  git commit -m "�ύX���e�̃R�����g"  
  git push origin [�u�����`��] �� �i��{�I�Ƀ����[�g�ɂ��閼�O����͂���j
```

# ��ƏI����master�ɕύX���e���}�[�W����
```
  git merge [�}�[�W��̃u�����`��] ���i�}�[�W����Ƃ��̓}�[�W���ɂ��邱�ƁI�I�j
  git add .
  git commit
  git push
```

# git�ŏՓˁi�R���t���N�g�j���N�����ꍇ
```
  1.�܂��R���t���N�g�����t�@�C�����C���i�}�[�W�j����
  2.git add [�Ώۃt�@�C��]
  3.git commit
  4.git push
```
## Push���ł��Ȃ���
  git push --set-upstream origin develop