# Configure the FactoryGirlRails which helps generate data for test examples.  You can find more info at
# https://github.com/thoughtbot/factory_girl_rails.

# There's an issue somewhere in how factory_girls initializes which can cause errors.  For more info, see
# info http://stackoverflow.com/questions/12423273/factorygirl-screws-up-rake-dbmigrate-process
# As a result, we have set 'require: false' on the factory_girls_rails gem (in the Gemfile) and explicitly require it here.
require 'factory_girl_rails'

RSpec.configure do |config|
  # Allows the use of "create :user" as a shorthand for "FactoryGirl.create :user".
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    # This forces FactoryGirl to recognize changes in factories.  It's useful for process forking with spring & spork.
    FactoryGirl.reload

    begin
      # Prep DatabaseCleaner because the call to FactoryGirl.lint below will leave models in the database.
      DatabaseCleaner.start
      # Ensure factories generate valid objects
      FactoryGirl.lint
    ensure
      # Clean the database because FactoryGirl.lint left models in database.
      DatabaseCleaner.clean
    end
  end
end
