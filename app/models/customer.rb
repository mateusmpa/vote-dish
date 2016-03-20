class Customer < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :avatar, content_type: ['image/jpeg', 'image/png', 'image/gif']

  validates_presence_of :name, message: ' - must be filled'
  validates_uniqueness_of :name, message: ' - already registered name'
  validates_numericality_of :age, greater_than: 0, less_than: 100, message: 'number must be between 0 and 100'

  has_many :qualifications
end
