class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.float :cost, null: false
      t.text :description, null: false
      t.references :category, index: true, null: false
      t.date :date, null: false
      t.references :location, index: true, null: false

      t.timestamps
    end
  end
end
