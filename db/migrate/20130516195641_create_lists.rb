class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :description, :null => false
      t.boolean :public, :default => false
      t.references :user, :null => false

      t.timestamps
    end
    add_index :lists, :user_id
  end
end
