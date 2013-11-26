class Place < ActiveRecord::Base

  validates :name, presence: true
  
  belongs_to :country

  has_many :people, through: :roles

end
