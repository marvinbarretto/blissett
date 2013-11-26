class Country < ActiveRecord::Base

  validates :name, presence: true
  validates_uniqueness_of :name
  
  has_many :places

end
