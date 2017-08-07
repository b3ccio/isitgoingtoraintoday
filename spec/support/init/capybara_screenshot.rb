# Configure the CapybaraScreenshot gem which records a screenshot on failing tests to help debug problems.  You can find more
# info at https://github.com/mattheworiordan/capybara-screenshot.
require 'capybara-screenshot/rspec'

# When 'true', screenshots will automatically be taken when a test fails.  You can set this to 'false' and insert
# 'screenshot_and_save_page' in your code if you want to manually trigger a screenshot.  This could be useful if
# you need to a take a screenshot before the actual failure happens.
Capybara::Screenshot.autosave_on_failure = true

# By default, screenshots are kept indefinitely.  :keep_last_run tells Capybara to only keep the very last run.
Capybara::Screenshot.prune_strategy = :keep_last_run

# Keep up to the number of screenshots specified.  This is useful to pair with with the :keep_last_run strategy if you want
# more than the very last run kept.
# Capybara::Screenshot.prune_strategy = { keep: 3 }

# This is used to configure the screen width and height of the screenshot.  Capybara webkit defaults to 1000px by 10px which
# is way to small of a height.  We use 1366 X 768 to try and make sure the navbar isn't collapsed.  This setting only works when
# webkit is in use.
Capybara::Screenshot.webkit_options = { width: 1366, height: 768 }

# By default, the HTML screenshot won't look very nice in the browser.  CSS, image, etc... won't be rendered when you view the
# page because the page contains relative links which don't resolve correctly (for example: <link href="/assets/..." />).
# By setting the value below, the browser is able to turn the relative paths into full
# URLs.  If you open the snapshot as usual, you will still see an ugly page.  However, if you run a rails server, in development
# mode, on port 3333, you will get a nice looking page.
Capybara.asset_host = 'http://localhost:3333'
