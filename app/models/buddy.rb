class Buddy < ActiveRecord::Base
  has_many :expense_buddies
  has_many :expenses, through: :expense_buddies
end
