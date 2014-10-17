class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :legs
  has_many :expenses, through: :legs
  has_many :expense_buddies, through: :expenses
  has_many :buddies, through: :expense_buddies

  accepts_nested_attributes_for :legs, allow_destroy: true
end
