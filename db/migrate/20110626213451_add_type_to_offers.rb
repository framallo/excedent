class AddTypeToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :offer_type, :string
  end

  def self.down
    remove_column :offers, :offer_type
  end
end
