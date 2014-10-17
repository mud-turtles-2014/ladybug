class Buddy < ActiveRecord::Base
  belongs_to :trip
  has_many :expense_buddies
  has_many :expenses, through: :expense_buddies
end
