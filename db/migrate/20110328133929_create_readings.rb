class CreateReadings < ActiveRecord::Migration
  def self.up
    create_table :readings do |t|
      t.integer :plan_id
      t.date :reading_date
      t.string :start_coordinates
      t.string :end_coordinates
      t.timestamps
    end
  end

  def self.down
    drop_table :readings
  end
end
