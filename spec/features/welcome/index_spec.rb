# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcome Index' do
  describe 'As a visitor' do
    before :each do
      visit root_path
    end

    it 'can fill in sweet potatoes in the form' do
      fill_in :q, with: 'sweet potatoes'
    end

    it 'can click Search button' do
      fill_in :q, with: 'sweet potatoes'

      click_button 'Search'
    end

    it "can send me to '/foods' when I click Search button" do
      fill_in :q, with: 'sweet potatoes'
      click_button 'Search'

      expect(current_path).to eq('/foods')
    end
  end
end
