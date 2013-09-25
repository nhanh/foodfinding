class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restName
      t.float :rateNumber
      t.text :restImage
      t.integer :restType
      t.string :Address
      t.integer :district_id
      t.string :Longitude
      t.string :Latitude

      t.timestamps
    end
  end
end
