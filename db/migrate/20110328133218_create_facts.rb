class CreateFacts < ActiveRecord::Migration
  def self.up
    create_table :facts do |t|
      t.integer :user_id
      t.string :type
      t.string :question
      t.string :header
      t.text :text
      t.timestamps
    end
  end

  def self.down
    drop_table :facts
  end
end
