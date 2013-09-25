class CreateFooddrinks < ActiveRecord::Migration
  def change
    create_table :fooddrinks do |t|
      t.string :fdName
      t.integer :category_id
      t.integer :restaurant_id
      t.integer :Price
      t.float :rateNumber
      t.text :fdImage
      t.date :dateUpload
      t.integer :Type

      t.timestamps
    end
  end
end
