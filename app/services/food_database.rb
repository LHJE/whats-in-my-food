# frozen_string_literal: true

class FoodDatabase
  def self.food_details(food)
    key = ENV['FOOD_DATA_API_KEY']
    url = 'https://api.nal.usda.gov'
    uri = "/fdc/v1/foods/search?api_key=#{key}&query=#{food}"
    get_results(url, key, uri)
  end

  def self.get_results(url, key, uri)
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers['X-API-Key'] = key
    end
    results = conn.get(uri)
    JSON.parse(results.body, symbolize_names: true)
  end
end
