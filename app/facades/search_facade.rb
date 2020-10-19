# frozen_string_literal: true

class SearchFacade
  def self.find_foods_info(food_name)
    attributes = FoodDatabase.food_details(food_name)
    attributes[:foods].each do |food|
      FoodInfo.create(description: food[:description], gtin_code: food[:gtinUpc], owner: food[:brandOwner], ingredients: food[:ingredients])
    end
    Food.new(attributes)
  end
end
