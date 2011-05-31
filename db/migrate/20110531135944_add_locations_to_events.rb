class AddLocationsToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :event_location, :string
  end

  def self.down
    remove_column :events, :event_location
  end
end
