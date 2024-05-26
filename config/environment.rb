# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Set the secret key base for encryption
Rails.application.config.secret_key_base = ENV['RAILS_MASTER_KEY']
