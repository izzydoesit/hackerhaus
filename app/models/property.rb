# require 'elasticsearch/model'

class Property < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :title, :presence => true
  validates :description, :presence => true
  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :price, :presence => true
  geocoded_by :street
  after_validation :geocode, :if => :street_changed?
end

# Property.__elasticsearch__.create_index!
Property.import
