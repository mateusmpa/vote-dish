class Qualification < ActiveRecord::Base
  validates_presence_of :note, message: ' - must be filled'
  validates_presence_of :amount_spent, message: ' - must be filled'

  validates_nmericality_of :note, greater_than_or_equal_to: 0, less_than_or_equal_to: 10, message: 'number must be between 0 and 10'
  validates_numericality_of :amount_spent, greater_than: 0, message: ' - number must be greater than 0'

  belongs_to :customer
  belongs_to :restaurant
end
