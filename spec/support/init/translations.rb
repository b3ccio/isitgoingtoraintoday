# Allow translations helper.  For more info, see https://robots.thoughtbot.com/foolproof-i18n-setup-in-rails
RSpec.configure do |config|
  config.include AbstractController::Translation
end
