class Role < ActiveRecord::Base
  belongs_to :person
  has_one    :role_type
end
