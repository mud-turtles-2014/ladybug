class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.references :location, index: true
      t.date :start_date
      t.date :end_date
      t.references :trip, index: true

      t.timestamps
    end
  end
end
