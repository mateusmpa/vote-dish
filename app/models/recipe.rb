class Recipe < ActiveRecord::Base
  validates_presence_of :content, message: ' - must be filled'
end
