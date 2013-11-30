class Place < ActiveRecord::Base

  validates :name, presence: true
  
  has_many :clubs
  has_many :people
  
  belongs_to :country

end
