class Place < ActiveRecord::Base

  validates :name, presence: true
  
  has_many :clubs
  
  belongs_to :country

end
