require 'test_helper'

class MinitestScreenshotReporterTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MinitestScreenshotReporter::VERSION
  end
end
