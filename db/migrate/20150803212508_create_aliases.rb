class CreateAliases < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.string :name
      t.integer :hero_id
      t.timestamps
    end
  end
end
