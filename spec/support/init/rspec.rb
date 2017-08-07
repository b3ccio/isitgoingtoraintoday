# This file loads custom initialization and configuration for RSpec.  It is recommend that
# spec_helper.rb and rails_helper.rb be left unchanged (unless absolutely necessary) and have
# this file serve as the primary location for configuring RSpec.  If you find yourself needing
# to make changes to spec_helper.rb or  rails_helper.rb, please contact the DID(it) team so we
# can understand the use case.  By letting this file contain the custom RSpec configuration,
# you can easily isolate the differences between the defaults provided rails_helper/spec_helper
# and your changes.

RSpec.configure do |config|
  # Use this space to add settings or override settings from the RSpec.configure block of
  # spec_helper.rb and rails_helper.rb.
  #
  # If you need to configure a brand new gem, consider placing that configuration in
  # its own file inside the spec/support/init folder.

  # Allows RSpec to persist some state between runs in order to support
  # the `--only-failures` and `--next-failure` CLI options. We recommend
  # you configure your source control system to ignore this file.
  config.example_status_persistence_file_path = "spec/spec_failures.txt"

  # These two settings work together to allow you to limit a spec run
  # to individual examples or groups you care about by tagging them with
  # `:focus` metadata. When nothing is tagged with `:focus`, all examples
  # get run.
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = :random
end
