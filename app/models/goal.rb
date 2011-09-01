class Goal < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :log_items
  
  scope :completed, where(:completed => true)
end
