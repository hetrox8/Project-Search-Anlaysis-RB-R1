# Load the Rails application.
require_relative "application"
# Initialize the Rails application.
Rails.application.initialize!

config.secret_key_base = ENV['RAILS_MASTER_KEY']
