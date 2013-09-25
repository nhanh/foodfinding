class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.float :rateNumber
      t.string :Name
      t.string :Title
      t.string :Description
      t.date :dateComment
      t.integer :type_id

      t.timestamps
    end
  end
end
