class Category < ActiveRecord::Base
  has_many :goals
  
  def to_s
    name
  end
end
