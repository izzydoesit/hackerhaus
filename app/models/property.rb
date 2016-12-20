require 'elasticsearch/model'

class Property < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :title, :presence => true
  validates :description, :presence => true
  validates :city_name, :presence => true
  validates :price, :presence => true
end
# Property.__elasticsearch__.create_index!
# Property.import
