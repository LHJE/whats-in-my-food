class CreateFoodInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :food_infos do |t|
      t.string :description
      t.integer :gtin_code
      t.string :owner
      t.string :ingredients

      t.timestamps
    end
  end
end
