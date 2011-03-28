class CreateBibleBooks < ActiveRecord::Migration
  def self.up
    create_table :bible_books do |t|
      t.integer :num
      t.string :name
      t.integer :chapter_count
      t.integer :verse_count
      t.integer :word_count
      t.timestamps
    end
  end

  def self.down
    drop_table :bible_books
  end
end
