require 'spec_helper'

describe HomeController, :type => :controller do

  describe "GET 'index'" do
    it "delivers the latest 5 listings" do
      p1 = create(:property, :created_at => 6.days.ago)
      p2 = create(:property, :created_at => 5.days.ago)
      p3 = create(:property, :created_at => 4.days.ago)
      p4 = create(:property, :created_at => 3.days.ago)
      p5 = create(:property, :created_at => 2.days.ago)
      p6 = create(:property, :created_at => 1.day.ago)
      get 'index'
      expect(assigns(:properties)).to match_array [p2, p3, p4, p5, p6]
    end
  end
end