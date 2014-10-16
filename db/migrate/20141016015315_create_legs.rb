class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.references :location, index: true, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.references :trip, index: true, null: false

      t.timestamps
    end
  end
end
