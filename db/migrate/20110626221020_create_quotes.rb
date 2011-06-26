class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
