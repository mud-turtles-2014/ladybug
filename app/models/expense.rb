class Expense < ActiveRecord::Base
  belongs_to :category
  belongs_to :leg
  has_one :user, through: :leg
  has_many :expense_buddies
  has_many :buddies, through: :expense_buddies

  accepts_nested_attributes_for :expense_buddies, allow_destroy: true
end
