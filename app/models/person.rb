class Person < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name,  presence: true

  has_one :place
  has_one :country, through: :place
  
end
