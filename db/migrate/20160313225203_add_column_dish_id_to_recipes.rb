class AddColumnDishIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :dish_id, :integer
  end
end
