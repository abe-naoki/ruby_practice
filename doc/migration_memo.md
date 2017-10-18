# マイグレーションファイルを作成してテーブルを変更する手順
  1.マイグレーションファイル作成
    rails g migration クラス名
    ※クラス名は基本的に「行う処理＋テーブル名」にする。
    例）testテーブルにnameというカラムを追加する場合は「AddNameToTest」
    ※区切り部分は大文字
  
    ☆追加内容等もコマンドに記載して自動で作成させる方法
      rails g migration クラス名 カラム名:データ型( カラム名:データ型)
      例)rails g migration AddColumnBattle name:string
      
  
  
  
# 作成したマイグレーションファイルを削除する
  rails destroy migration クラス名
  
  
  2.マイグレーションファイル実施