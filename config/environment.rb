# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Rails.logger = Le.new('57d8719e-9a6c-4c1c-9351-5b857a2991b5') if Rails.env.production?
