class Expense < ActiveRecord::Base
  belongs_to :category
  belongs_to :leg
  belongs_to :currency
  has_one :user, through: :leg
  has_many :expense_buddies
  has_many :buddies, through: :expense_buddies
end
