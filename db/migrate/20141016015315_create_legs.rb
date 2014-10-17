class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.references :location, index: true, null: false
      t.date :start_date
      t.date :end_date
      t.references :trip, index: true, null: false

      t.timestamps
    end
  end
end
