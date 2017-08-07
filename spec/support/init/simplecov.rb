# Configure the SimpleCov gem which measures the code coverage of tests.  Results from multiple test runs, between
# different frameworks, will be merged.  You can find more info at https://github.com/colszowka/simplecov.
require 'simplecov'

# You can switch the format of the reports (in the coverage folder) by setting the SIMPLECOV_FORMATTER environment variable.
# For example, you might start your rspec tests with "SIMPLECOV_FORMATTER=rcov xvfb-run bundle exec rspec".  This would
# tell simplecov to create RCOV style reports.   If you do not use SIMPLECOV_FORMATTER (or set it to "simplecov"), the
# default simplecov report format will be used.

# This file contains helpers which make working with the SIMPLECOV_FORMATTER environment variable a little nicer.
# If you remove this line, you can still work with the SIMPLECOV_FORMATTER variable directly, however, you won't be
# able to use the helpers like the `DRF.use_simplecov_rcov_formatter?` method below.
require 'didit_rails_framework/testing_support/simplecov'

# Use the regular simplecov format for output unless the SIMPLECOV_FORMATTER environment variable has been set.
# If set to 'rcov', use the Rcov formatter.  Jenkins will set the environment variable to 'rcov' because the
# Jenkins Ruby Metric plugin doesn't work with the regular simplecov formatter.
if DRF.use_simplecov_rcov_formatter?
  require 'simplecov-rcov'
  SimpleCov.formatters = [SimpleCov::Formatter::RcovFormatter]
end

SimpleCov.start :rails do
  # add_filter "/foo/" # Do not track files in the foo directory
end
