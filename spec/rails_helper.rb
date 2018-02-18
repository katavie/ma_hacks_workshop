ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

require "rspec/rails"
require "shoulda/matchers"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |file| require file }

module Matchers
  # Extend this module in spec/support/matchers/*.rb
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

ActiveRecord::Migration.maintain_test_schema!
