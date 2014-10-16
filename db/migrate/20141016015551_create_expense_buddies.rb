class CreateExpenseBuddies < ActiveRecord::Migration
  def change
    create_table :expense_buddies do |t|
      t.references :buddy, index: true, null: false
      t.references :expense, index: true, null: false

      t.timestamps
    end
  end
end
