class Person < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name,  presence: true

  belongs_to :place
  has_one :country, through: :place
  
  has_many :stints
end
