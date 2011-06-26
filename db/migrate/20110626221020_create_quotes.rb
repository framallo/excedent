class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.integer :offer_id
      t.text :description
      t.string :user

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
