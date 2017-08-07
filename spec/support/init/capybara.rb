# Configure the Capybara gem which helps with feature/acceptance testing.  You can find more config options at
# https://github.com/jnicklas/capybara.
require 'capybara/rails'

# Find options at http://www.rubydoc.info/github/jnicklas/capybara/Capybara.configure
Capybara.configure do |config|
  # The default host to use when giving a relative URL to visit, must be a valid URL e.g. www.example.com
  # config.app_host = nil

  # The maximum number of seconds to wait for asynchronous processes to finish.
  # config.default_max_wait_time = 2
end
