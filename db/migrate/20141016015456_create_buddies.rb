class CreateBuddies < ActiveRecord::Migration
  def change
    create_table :buddies do |t|
      t.string :name, null: false
      t.belongs_to :trip
      t.timestamps
    end
  end
end
