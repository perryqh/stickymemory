class CreateBibleChapters < ActiveRecord::Migration
  def self.up
    create_table :bible_chapters do |t|
      t.integer :bible_book_id
      t.integer :chapter_num
      t.integer :verse_count
      t.timestamps
    end
  end

  def self.down
    drop_table :bible_chapters
  end
end
