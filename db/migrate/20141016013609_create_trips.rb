class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :user, index: true
      t.string :name
      t.text :description
      t.integer :budget
      t.boolean :is_published
      t.boolean :is_private

      t.timestamps
    end
  end
end
