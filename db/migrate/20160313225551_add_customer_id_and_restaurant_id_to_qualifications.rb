class AddCustomerIdAndRestaurantIdToQualifications < ActiveRecord::Migration
  def change
    add_column :qualifications, :customer_id, :integer
    add_column :qualifications, :restaurant_id, :integer
  end
end
