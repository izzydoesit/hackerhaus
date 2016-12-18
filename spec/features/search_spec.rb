require 'spec_helper'

feature 'Search for properties', %q{
  As a user of this service, I want to enter a search text and get the relevant search results so I can find the right property  
  } do

    background do
      @p1 = create(:property, :ny, :madison, :title => "Property 1")
      @p2 = create(:property, :ny, :five_star_hotel, :title => "Property 2")
      @p3 = create(:property, :city_name => "Washington", :title => "Property 3")
      ThinkingSphinx::Test.index
    sleep 0.25 until Dir[Rails.root.join('db', 'sphinx', 'test', '*.{new,tmp}.*')].empty?
    end

    scenario 'search property with butler service' do
      visit root_path
      fill_in 'query', with: 'butler service'
      click_button 'Search'
      expect(current_path).to eq search_path
      expect(page).to have_content "Property 1"
      expect(page).to have_content "Property 2"
      expect(page).not_to have_content "Property 3"
    end

    scenario 'Search property with five star hotel service' do
      visit root_path
      fill_in 'query', with: 'five star hotel service'
      click_button 'Search'
      expect(current_path).to eq search_path
      expect(page).to have_content "Property 2"
      expect(page).not_to have_content "Property 1"
      expect(page).not_to have_content "Property 3"
    end

    scenario 'Search property near Madison Square Park' do
      visit root_path
      fill_in 'query', with: 'Madison Square Park'
      click_button 'Search'
      expect(current_path).to eq search_path
      expect(page).to have_content "Property 1"
      expect(page).not_to have_content "Property 2"
      expect(page).not_to have_content "Property 3"
    end

end