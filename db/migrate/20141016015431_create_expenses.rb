class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.float :cost
      t.text :description
      t.references :category, index: true
      t.date :date
      t.references :leg, index: true

      t.timestamps
    end
  end
end
