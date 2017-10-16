# enaumとは？
  enumは列挙型  
  列挙とは整数が割り当てられた文字を順番に出力していくことを意味します。  
  enumを使えば、文字の配列に整数を順番に割り当てられます。  

  enumを使えば、数字を意味のある文字として扱えるので、便利です。



# enumの使い方
  RailsでActive Recordのenumのカラムに対してselectタグを設置する手順
```
  1.モデルを作成  
  rails g model Battle status:integer
  
  2.モデル作成時にできたマイグレーションファイルを修正  
  def change  
    create_table :battles do |t|  
      t.integer :status,default: 0, null: false, limit: 1  
      t.timestamps  
    end  
  end  

  default:0 → 初期値を0  
  null:false → レコードにnullの値を入れることを許可しない  
  limit:1 → レコードの数を1個に限定  

  3.修正したマイグレーションファイルを反映  
  rake db:migrate  

  4.enumを定義  
  enum status:{ attack: 0,spells:1,defend:2,item:3, abilities:4 }  
  #attack=攻撃、spells=魔法、defend=防御、item=アイテム、abilities=特技
  
  5.コントローラーとビューの作成  
  rails g controller Battle test
  
  6.ビューにセレクトボックスを配置して確認  
  vi app/views/battle/test.html.erb  
    <h1>Battle#test</h1>
    <%= select :status,:name,Battle.statuses.keys.to_a %>  
    <%= select :status,:name,Battle.statuses.values.to_a %>  
  
  ※モデルで定義したenumはビューでも使うことができる！

# 【参考URL 】
・http://www.sejuku.net/blog/26369#enum

