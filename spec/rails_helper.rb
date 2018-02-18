ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

require 'database_cleaner'
require "rspec/rails"
require "shoulda/matchers"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |file| require file }
DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  config.include Rails.application.routes.url_helpers
  config.use_transactional_fixtures = true
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

ActiveRecord::Migration.maintain_test_schema!
