class Dish < ActiveRecord::Base
  validates_presence_of :name, message: ' - must be filled'
  validates_uniqueness_of :name, message: ' - already registered name'

  validate :validate_presence_of_more_than_one_restaurant

  has_and_belongs_to_many :restaurants
  has_one :recipe

  private
  def validate_presence_of_more_than_one_restaurant
    errors.add(:restaurants, 'must be at least one restaurant') if restaurants.empty?
  end
end
