# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# convert to camelCase
Jbuilder.key_format camelize: :lower
