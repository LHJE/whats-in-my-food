require 'rails_helper'

RSpec.describe 'Welcome Index' do
  describe 'As a visitor' do
    before :each do
      visit root_path
    end

    it "can fill in sweet potatoes in the form" do
      fill_in :q, with: 'sweet potatoes'
    end
  end
end
