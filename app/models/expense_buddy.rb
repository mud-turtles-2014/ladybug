class ExpenseBuddy < ActiveRecord::Base
  belongs_to :buddy
  belongs_to :expense
end
