# Git�̊�{�I�ȃR�}���h����

## Git fork  
Github�̃A�J�E���g�������Ă���ƁA�����̃A�J�E���g���Ɋ����̃��|�W�g���̕������쐬

## ���|�W�g���̍쐬

## �u�����`�̍쐬
git checkout -b [�u�����`��] origin/[�u�����`��]

## �N���[��
git clone

## �ύX���e�������[�g���|�W�g����push����܂ł̗���
```
  git add .  
  git commit  
  git push  
```

## git�̏�ԁi�������̂���t�@�C���j�m�F
git status

## �u�����`���폜
  **���폜�̍ۂ͑Ώۂ̃u�����`�ɂ��Ȃ����Ɓi�ړ����Ă������Ɓj!!**
  git branch -d [�u�����`��]

## �u�����`���폜�i���}�[�W�������ǂ�����킸�ɋ����폜�j
  git branch -D [�u�����`��]

## �����[�g�u�����`�̍폜
  git push --delete origin [�u�����`��]
  
## git��push���폜�i�t�@�C���͎c�����܂܁j
  git git rm --cached -r [�t�@�C����]

## �V�K�u�����`�쐬�܂ł̎菇
```
  Pull Request�p�u�����`���쐬  
  git checkout -b [�u�����`��]  
  git add . ���ύX���e��add����  
  git commit -m "�ύX���e�̃R�����g"  
  git push origin [�u�����`��] �� ��{�I�Ƀ����[�g�ɂ��閼�O����͂���
```

# ��ƏI����master�ɕύX���e���}�[�W����
```
  git merge [�u�����`��]
  git add .
  git commit
  git push
```
