class Restaurant < ActiveRecord::Base
  validates_presence_of :name, message: 'must be filled'
  validates_presence_of :address, message: 'must be filled'
  validates_presence_of :specialty, message: 'must be filled'

  validates_uniqueness_of :name, message: 'already registered name'
  validates_uniqueness_of :address, message: 'already registered address'

  validate :first_letter_must_be_uppercase

  has_many :qualifications
  has_and_belongs_to_many :dishes

  has_many :comments, :as => :commentable

  private
  def first_letter_must_be_uppercase
    errors.add(:name, 'first letter must be uppercase') unless name =~ /[A-Z].*/
  end
end
