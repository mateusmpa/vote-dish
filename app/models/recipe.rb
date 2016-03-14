class Recipe < ActiveRecord::Base
  validates_presence_of :content, message: ' - must be filled'

  validates_presence_of :dish_id
  validates_associated :dish

  belongs_to :dish
end
