class Place < ActiveRecord::Base

  validates :name, presence: true
  
  belongs_to :country


end
