class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, limit: 80
      t.integer :age
      t.timestamps null: false
    end
  end
end
