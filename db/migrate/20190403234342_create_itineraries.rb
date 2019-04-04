class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :category
      t.string :name
      t.text :description
      t.text :image_url
      t.string :address

      t.timestamps
    end
  end
end
