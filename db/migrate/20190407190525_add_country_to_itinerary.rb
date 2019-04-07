class AddCountryToItinerary < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :country, :string
  end
end
