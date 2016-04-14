require 'spec_helper'

describe Property do
  it "is valid with title, description, cityname and price" do 
  	p = create(:property, :ny, :madison)
  	expect(p).to be_valid
  end

  it "is invalid without title" do 
  	p = build(:property, :ny, :madison, :title => nil)
  	expect(p).to have(1).errors_on(:title)
  end

  it "is invalid without description" do
  	p = build(:property, :ny, :description => nil)
  	expect(p).to have(1).errors_on(:description)
  end

  it "is invalid without cityname" do 
  	p = build(:property, :madison, :city_name => nil)
  	expect(p).to have(1).errors_on(:city_name)
  end

  it "is invalid without a price" do 
  	p = build(:property, :madison, :price => nil)
  	expect(p).to have(1).errors_on(:price)
  end

end

validates :title, :presence => true
validates :description, :presence => true
validates :city_name, :presence => true
validates :price, :presence => true