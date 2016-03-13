class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.float :note
      t.float :amount_spent
      t.timestamps null: false
    end
  end
end
