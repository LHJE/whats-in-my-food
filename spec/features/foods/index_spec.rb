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
  end
end
