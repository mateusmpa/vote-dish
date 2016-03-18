class Qualification < ActiveRecord::Base
  validates_presence_of :note, message: ' - must be filled'
  validates_presence_of :amount_spent, message: ' - must be filled'

  validates_numericality_of :note, greater_than_or_equal_to: 0, less_than_or_equal_to: 10, message: 'number must be between 0 and 10'
  validates_numericality_of :amount_spent, greater_than: 0, message: ' - number must be greater than 0'

  validates_presence_of :customer_id, :restaurant_id
  validates_associated :customer, :restaurant

  belongs_to :customer
  belongs_to :restaurant

  has_many :comments, :as => :commentable
end
