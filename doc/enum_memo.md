# enum�Ƃ́H
  enum�͗񋓌^  
  �񋓂Ƃ͐��������蓖�Ă�ꂽ���������Ԃɏo�͂��Ă������Ƃ��Ӗ����܂��B  
  enum���g���΁A�������Ӗ��̂��镶���Ƃ��Ĉ�����̂ŁA�֗��ł��B
  
  �v����ɐ����ɑ΂��ĕ�����g�ݍ���ł���悤�ȃC���[�W�B  
  �������邱�Ƃɂ���āA�R�[�h�����������łǂ̂悤�Ȓl�������I�ɂ��킩��₷���B
  

# enum�̎g����
  Rails��Active Record��enum�̃J�����ɑ΂���select�^�O��ݒu����菇
```
  1.���f�����쐬  
    rails g model Battle status:integer
  
  2.���f���쐬���ɂł����}�C�O���[�V�����t�@�C�����C��  
    -------------------------------------------------------------
    def change  
      create_table :battles do |t|  
        t.integer :status,default: 0, null: false, limit: 1  
        t.timestamps  
      end  
    end  
    -------------------------------------------------------------
    default:0 �� �����l��0  
    null:false �� ���R�[�h��null�̒l�����邱�Ƃ������Ȃ�  
    limit:1 �� ���R�[�h�̐���1�Ɍ���  

  3.�C�������}�C�O���[�V�����t�@�C���𔽉f  
    rake db:migrate  

  4.enum���`  
    enum status:{ attack: 0,spells:1,defend:2,item:3, abilities:4 }  
    #attack=�U���Aspells=���@�Adefend=�h��Aitem=�A�C�e���Aabilities=���Z
  
  5.�R���g���[���[�ƃr���[�̍쐬  
    rails g controller Battle test
  
  6.�r���[�ɃZ���N�g�{�b�N�X��z�u���Ċm�F  
    vi app/views/battle/test.html.erb  
    -------------------------------------------------------------
      <h1>Battle#test</h1>
      <%= select :status,:name,Battle.statuses.keys.to_a %>  
      <%= select :status,:name,Battle.statuses.values.to_a %>  
    -------------------------------------------------------------
    �����f���Œ�`����enum�̓r���[�ł��g�����Ƃ��ł���I
```

### enum�̃��\�b�h
  rails console�ŃR���\�[�����J���Ĉȉ��̃R�[�h����͂��Ċm�F
    ### status��attack�ɂ���  
    battle = Battle.new(status: :attack)  
    ### ���݂�status���m�F����  
    battle.status  
    ### ���݂�status��attack�Ȃ̂��m�F����  
    battle.attack?  
    ### ���݂�status��defend�Ȃ̂��m�F����  
    battle.defend?  
    ### ���f���Œ�`�����n�b�V���̒��g���m�F����  
    Battle.statuses  
    ### �n�b�V���Ƃ��Ďg���A�A�C�e���ɒ�`���ꂽ�����l�́H  
    Battle.statuses[:item]  
    ### status��spells�ɕύX����  
    battle.spells!  
    ### ���݂�status���m�F����  
    battle.status  
    ### status��item�ɕύX����  
    battle.item!  
    ### ���݂�status���m�F����  
    battle.status  

  #### ���s����
  ```
  => #<Battle id: nil, status: "attack", created_at: nil, updated_at: nil>  
  => �gattack"  
  => true  
  => false  
  => {"attack"=>0, "spells"=>1, "defend"=>2, "item"=>3, "abilities"=>4}  
  => 3  
  => true  
  => �gspells"  
  => true  
  => "item"  
  ```

# �y�Q�lURL �z
�Ehttp://www.sejuku.net/blog/26369#enum

