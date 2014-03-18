# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
GaMapQuote::Application.initialize!

#from heroku doc
config.gem 'redis'
