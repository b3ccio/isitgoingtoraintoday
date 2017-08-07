# Configure the DatabaseCleaner gem which helps clean the database between test examples.  You can find more config options at
# https://github.com/DatabaseCleaner/database_cleaner.

# The general, idea behind the configuration below is to use the :transaction strategy, but switch to :deletion (or :truncation)
# when dealing with tests that uses JavaScript.  :transaction has a high likelihood of failing with JavaScript tests (see
# the database_cleaner for reasons why).  In general, :deletion should be faster than :truncation (see
# http://sevenseacat.net/2015/02/01/use_database_cleaners_deletion_strategy.html), but this isn't always the case according
# to the database_cleaner README.

RSpec.configure do |config|
  config.before(:each) do |example|
    if example.metadata[:js]
      # Temporarily exclude ar_internal_metadata.  This table is new in Rails 5 and shouldn't be cleaned, but database_cleaner
      # is deleting it (which leads to crashes).
      # See https://git.uscis.dhs.gov/USCIS/didit_rails_framework/issues/137 for more info
      DatabaseCleaner.strategy = :deletion, { except: %w[ar_internal_metadata] }
    else
      DatabaseCleaner.strategy = :transaction # Options aren't allowed with :transaction
      # DatabaseCleaner only needs to "start" when using :transaction (because it needs to know to open the transaction).
      DatabaseCleaner.start
    end
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
