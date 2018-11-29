class DestroyEmailToPAndD < ActiveRecord::Migration[5.2]
  def change
    remove_column :passengers, :email, :string
    remove_column :drivers, :email, :string

  end
end
