class Person < ActiveRecord::Base
  # searchkick autocomplete: ['first_name']
  searchkick autocomplete: [:first_name, :last_name], text_start: [:full_name]

  validates :first_name, presence: true
  validates :last_name,  presence: true

  belongs_to :place
  has_one :country, through: :place
  
  has_many :stints

  def full_name
    return "#{first_name.capitalize} #{last_name.capitalize}"
  end

end
