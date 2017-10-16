# Gitの基本的なコマンドメモ

## 自分のアカウント内に既存のリポジトリの複製を作成
git fork [リポジトリURL]  ←（※個人用のリポジトリになる）

## リポジトリのコピー
git clone [リポジトリURL]

## ブランチの作成
git checkout -b [ブランチ名] origin/[ブランチ名]

## gitの状態（差分等のあるファイル）確認
git status

## gitの差分取得
  git fetch
  
## gitの変更を一時的に退避
  git stash ← （git add しておかないと使えない）

## ブランチを削除
  **※削除の際は対象のブランチにいないこと!!**  
  git branch -d [ブランチ名]

## ブランチを削除（※マージしたかどうか問わずに強制削除）
  git branch -D [ブランチ名]

## リモートブランチの削除
  git push --delete origin [ブランチ名]
  
## gitのpushを削除（ファイルは残したまま）
  git git rm --cached -r [ファイル名]

## 変更内容をリモートリポジトリにpushするまでの流れ
```
  git add .  
  git commit  
  git push  
```

## 新規ブランチ作成までの手順
```
  Pull Request用ブランチを作成  
  git checkout -b [ブランチ名]  
  git add . ←変更内容をaddする  
  git commit -m "変更内容のコメント"  
  git push origin [ブランチ名] ← （基本的にリモートにする名前を入力する）
```

# 作業終了後masterに変更内容をマージする
```
  git merge [マージ先のブランチ名] ←（マージするときはマージ元にいること！！）
  git add .
  git commit
  git push
```

# gitで衝突（コンフリクト）が起きた場合
```
  1.まずコンフリクトしたファイルを修正（マージ）する
  2.git add [対象ファイル]
  3.git commit
  4.git push
```
## Pushができない時
  git push --set-upstream origin develop