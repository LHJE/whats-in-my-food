# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Search Facade' do
  describe 'As a visitor' do
    before :each do
      visit root_path
      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'
    end

    it 'can create rows on a FoodInfo table' do
      expect(FoodInfo.all.count).to eq(10)
    end
  end
end
