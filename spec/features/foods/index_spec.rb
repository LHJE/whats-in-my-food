require 'rails_helper'

RSpec.describe 'Foods Index' do
  describe 'As a visitor' do
    before :each do
      visit root_path
      fill_in :q, with: 'sweet potatoes'
      click_button "Search"
    end

    it "can see the total number of items returned by the search" do
      expect(page).to have_content("Total number of items: 38680")
    end

    it "can see info about each food after click" do
      within "#food-#{FoodInfo.first[:id]}" do
        expect(page).to have_content("Description: SWEET POTATOES")
        expect(page).to have_content("GTIN/UPC code:")
        expect(page).to have_content("070560951975")
        expect(page).to have_content("Brand Owner:")
        expect(page).to have_content("The Pictsweet Company")
        expect(page).to have_content("Ingredients:")
        expect(page).to have_content("SWEET POTATOES.")
      end
    end
  end
end
