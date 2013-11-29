class Club < ActiveRecord::Base

  validates :name, presence: true

  belongs_to :place
  has_one :country, through: :place

end
