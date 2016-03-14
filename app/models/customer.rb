class Customer < ActiveRecord::Base
  validates_presence_of :name, message: ' - must be filled'
  validates_uniqueness_of :name, message: ' - already registered name'
  validates_numericality_of :age, greater_than: 0, less_than: 100, message: 'number must be between 0 and 100'

  has_many :qualifications
end
