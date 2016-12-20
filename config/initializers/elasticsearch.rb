# Require the Elasticsearch::Model gem.
require 'elasticsearch/model'

# Load the Bonsai URL into your app. We recommend the "12 Factor App"
# convention of using an environment variable. You may also use the
# Rails 4.2+ config_for method to fetch the URL from an optional
# config/elasticsearch.yml file.

BONSAI_URL = ENV['BONSAI_URL'] ||
  Rails.application.config_for(:elasticsearch)["url"]

# Set up an app-wide client object
Elasticsearch::Model.client = Elasticsearch::Client.new(
  url: BONSAI_URL,
  log: true
)
