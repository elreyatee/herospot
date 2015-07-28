class AddIndexToRelationships < ActiveRecord::Migration
  def change
    add_index :relationships, :user_id
    add_index :relationships, :hero_id
    add_index :relationships, [:user_id, :hero_id], unique: true
  end
end
