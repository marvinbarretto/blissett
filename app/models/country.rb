class Country < ActiveRecord::Base

  validates :name, presence: true
  validates_uniqueness_of :name
  
  belongs_to :continents
  has_many :places

end
