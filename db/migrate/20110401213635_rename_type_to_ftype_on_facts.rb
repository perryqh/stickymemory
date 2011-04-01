class RenameTypeToFtypeOnFacts < ActiveRecord::Migration
  def self.up
    rename_column :facts, :type, :ftype
  end

  def self.down
    rename_column :facts, :ftype, :type 
  end
end
