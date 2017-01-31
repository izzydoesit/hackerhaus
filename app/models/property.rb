require 'elasticsearch/model'

class Property < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :title, :presence => true
  validates :description, :presence => true
  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :price, :presence => true
  geocoded_by :address
  after_validation :geocode, :if => :street_changed? || :city_changed? || :state_changed?

  def address
    [street, city, state].compact.join(', ')
  end

end

# Property.__elasticsearch__.create_index!
Property.import
