require 'capybara/dsl'
require 'minitest/reporters/screenshot'

# Use with capybara integration tests
#
class Minitest::Reporters::ScreenshotReporter < Minitest::Reporters::BaseReporter
  include Capybara::DSL

  @count = 1

  class << self
    attr_accessor :count
  end

  def record(test)
    super
    if test.failure
      test_name = "#{test.class.name}-#{test.name}"
      screenshot_name = test.error? ? "ERROR-#{test_name}.png" : "FAILURE-#{test_name}.png"
      save_screenshot File.join('test/screenshots', "#{self.class.count}-#{screenshot_name}")
      self.class.count += 1
    end
  end
end
