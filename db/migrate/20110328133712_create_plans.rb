class CreatePlans < ActiveRecord::Migration
  def self.up
    create_table :plans do |t|
      t.integer :user_id
      t.integer :start_bible_book_id
      t.integer :end_bible_book_id
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end

  def self.down
    drop_table :plans
  end
end
