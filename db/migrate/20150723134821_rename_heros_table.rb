class RenameHerosTable < ActiveRecord::Migration
  def change
    rename_table(:heroes, :heros)
  end
end
