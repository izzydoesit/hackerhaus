class Property < ActiveRecord::Base

  validates :title, :presence => true
  validates :description, :presence => true
  validates :city_name, :presence => true
  validates :price, :presence => true
end
