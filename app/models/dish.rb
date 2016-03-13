class Dish < ActiveRecord::Base
  validates_presence_of :name, message: ' - must be filled'
  validates_uniqueness_of :name, message: ' - already registered name'
end
