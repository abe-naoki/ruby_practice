class AddNameToBattle < ActiveRecord::Migration[5.1]
  def change
    add_column :battles, :name, :string, after: :status
  end
end
