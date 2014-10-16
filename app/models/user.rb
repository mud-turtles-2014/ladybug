class User < ActiveRecord::Base
  has_secure_password
  has_many :trips
  has_many :legs, through: :trips
  has_many :expenses, through: :legs
  has_many :expense_buddies, through: :expenses
  has_many :buddies, through: :expense_buddies
end
