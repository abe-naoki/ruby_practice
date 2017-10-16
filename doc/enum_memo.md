# enumとは？
  enumは列挙型  
  列挙とは整数が割り当てられた文字を順番に出力していくことを意味します。  
  enumを使えば、数字を意味のある文字として扱えるので、便利です。
  
  要するに数字に対して文字を組み込んでいるようなイメージ。  
  こうすることによって、コードを見ただけでどのような値か直感的にもわかりやすい。
  

# enumの使い方
  RailsでActive Recordのenumのカラムに対してselectタグを設置する手順
```
  1.モデルを作成  
    rails g model Battle status:integer
  
  2.モデル作成時にできたマイグレーションファイルを修正  
    -------------------------------------------------------------
    def change  
      create_table :battles do |t|  
        t.integer :status,default: 0, null: false, limit: 1  
        t.timestamps  
      end  
    end  
    -------------------------------------------------------------
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
    -------------------------------------------------------------
      <h1>Battle#test</h1>
      <%= select :status,:name,Battle.statuses.keys.to_a %>  
      <%= select :status,:name,Battle.statuses.values.to_a %>  
    -------------------------------------------------------------
    ※モデルで定義したenumはビューでも使うことができる！
```

### enumのメソッド
  rails consoleでコンソールを開いて以下のコードを入力して確認
    ### statusをattackにする  
    battle = Battle.new(status: :attack)  
    ### 現在のstatusを確認する  
    battle.status  
    ### 現在のstatusがattackなのか確認する  
    battle.attack?  
    ### 現在のstatusがdefendなのか確認する  
    battle.defend?  
    ### モデルで定義したハッシュの中身を確認する  
    Battle.statuses  
    ### ハッシュとして使う、アイテムに定義された整数値は？  
    Battle.statuses[:item]  
    ### statusをspellsに変更する  
    battle.spells!  
    ### 現在のstatusを確認する  
    battle.status  
    ### statusをitemに変更する  
    battle.item!  
    ### 現在のstatusを確認する  
    battle.status  

  #### 実行結果
  ```
  => #<Battle id: nil, status: "attack", created_at: nil, updated_at: nil>  
  => “attack"  
  => true  
  => false  
  => {"attack"=>0, "spells"=>1, "defend"=>2, "item"=>3, "abilities"=>4}  
  => 3  
  => true  
  => “spells"  
  => true  
  => "item"  
  ```

# 【参考URL 】
・http://www.sejuku.net/blog/26369#enum

