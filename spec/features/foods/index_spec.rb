require 'rails_helper'

RSpec.describe 'Foods Index' do
  describe 'As a visitor' do
    before :each do
      visit root_path
      fill_in :q, with: 'sweet potatoes'
      click_button "Search"
    end

  end
end
