class Stint < ActiveRecord::Base

  validates  :join_date,  presence: true
  validates  :leave_date, presence: true

  belongs_to :person

  belongs_to  :role

end
