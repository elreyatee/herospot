class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :small_url
      t.string :large_url
      t.string :publisher
      t.text :biography
      t.integer :category_id
      t.timestamps
    end
  end
end
