class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :type
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :price
      t.string :pricing_type, :default=> 'horas'
      t.string :title
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :likes_count
      t.integer :buy_now_count
      t.boolean :is_visible
      t.float :lat
      t.float :lng
      t.boolean :featured
      t.integer :pictures_count

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
