class SearchFacade
  def self.find_foods_info(food)
    attributes = FoodDatabase.food_details(food)
    Food.new(attributes)
  end
end
