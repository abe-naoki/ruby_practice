# Gitの基本的なコマンドメモ

## Git fork  
Githubのアカウントを持っていると、自分のアカウント内に既存のリポジトリの複製を作成

## リポジトリの作成

## ブランチの作成
git checkout -b [ブランチ名] origin/[ブランチ名]

## クローン
git clone

## 変更内容をリモートリポジトリにpushするまでの流れ
```
  git add .  
  git commit  
  git push  
```

## gitの状態（差分等のあるファイル）確認
git status

## ブランチを削除
  **※削除の際は対象のブランチにいないこと（移動しておくこと）!!**
  git branch -d [ブランチ名]

## ブランチを削除（※マージしたかどうか問わずに強制削除）
  git branch -D [ブランチ名]

## リモートブランチの削除
  git push --delete origin [ブランチ名]
  
## gitのpushを削除（ファイルは残したまま）
  git git rm --cached -r [ファイル名]

## 新規ブランチ作成までの手順
```
  Pull Request用ブランチを作成  
  git checkout -b [ブランチ名]  
  git add . ←変更内容をaddする  
  git commit -m "変更内容のコメント"  
  git push origin [ブランチ名] ← 基本的にリモートにする名前を入力する
```

# 作業終了後masterに変更内容をマージする
```
  git merge [ブランチ名]
  git add .
  git commit
  git push
```
