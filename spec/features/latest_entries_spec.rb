require 'spec_helper'

feature 'Latest 5 properties on homepage', %q{
	As a user of this service
	I want to visit the homepage and see the latest 5 real estate listing entries
	so that I have fast access to the latest offerings.
} do
	
	background do 
		p1 = create(:property, :title => 'Property 1', :created_at => 6.days.ago)
		p2 = create(:property, :title => 'Property 2', :created_at => 5.days.ago)
		p3 = create(:property, :title => 'Property 3', :created_at => 4.days.ago)
		p4 = create(:property, :title => 'Property 4', :created_at => 3.days.ago)
		p5 = create(:property, :title => 'Property 5', :created_at => 2.days.ago)
		p6 = create(:property, :title => 'Property 6', :created_at => 1.day.ago)
	end
	
	scenario 'Show the latest 5 properties on startpage' do 
		visit root_path
		expect(page).to have_content 'Property 6'
		expect(page).to have_content 'Property 5'
		expect(page).to have_content 'Property 4'
		expect(page).to have_content 'Property 3'
		expect(page).to have_content 'Property 2'
	end

	
end