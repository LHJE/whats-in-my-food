# frozen_string_literal: true

class FoodInfo < ApplicationRecord
  validates :description,
            :gtin_code,
            :owner,
            :ingredients, presence: true
end
