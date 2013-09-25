class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cateName
      t.integer :cateType

      t.timestamps
    end
  end
end
