class CreateAdminRoles < ActiveRecord::Migration[5.1]
  def migrate(direction)
    super
    # migrate時にsuper_admin権限を追加
    AdminRole.create!(name: 'super_admin') if direction == :up
  end
  
  def change
    create_table :admin_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end
