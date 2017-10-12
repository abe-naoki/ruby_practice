# Gitの基本的なコマンドメモ

##Git fork  
Githubのアカウントを持っていると、自分のアカウント内に既存のリポジトリの複製を作成

# リポジトリの作成

#ブランチの作成
git checkout -b [ブランチ名] origin/[ブランチ名]

# クローン
git clone

# 変更内容をリモートリポジトリにpushするまでの流れ
```
  git add .  
  git commit  
  git push  
```

# gitの状態（差分等のあるファイル）確認
git status

gitのpushを削除（ファイルは残したまま）
git git rm --cached -r [ファイル名]