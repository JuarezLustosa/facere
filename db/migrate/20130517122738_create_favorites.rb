class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :user, :null => false
      t.references :list, :null => false

      t.timestamps
    end
    
    add_index :favorites, :user_id
    add_index :favorites, :list_id 
  end
end
