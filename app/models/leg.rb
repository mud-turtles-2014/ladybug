class Leg < ActiveRecord::Base
  belongs_to :location
  belongs_to :trip
  has_one :user, through: :trip
  has_many :expenses
  has_many :expense_buddies, through: :expenses
  has_many :buddies, through: :expense_buddies

  accepts_nested_attributes_for :expenses, allow_destroy: true
end
