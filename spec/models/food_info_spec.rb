# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FoodInfo do
  describe 'Validations' do
    it { should validate_presence_of :description }
    it { should validate_presence_of :gtin_code }
    it { should validate_presence_of :owner }
    it { should validate_presence_of :ingredients }
  end
end
