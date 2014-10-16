class CreateExpenseBuddies < ActiveRecord::Migration
  def change
    create_table :expense_buddies do |t|
      t.references :buddy, index: true
      t.references :expense, index: true

      t.timestamps
    end
  end
end
