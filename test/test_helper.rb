require 'coveralls'
Coveralls.wear!

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'minitest-screenshot-reporter'

require 'minitest/autorun'

require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new