$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'minitest_screenshot_reporter/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-screenshot-reporter"
  spec.version       = MinitestScreenshotReporter::VERSION
  spec.authors       = ["Igor Jancev"]
  spec.email         = ["igor@masterybits.com"]
  spec.summary       = %q{Minitest reporter that automatically creates a screenshot on error or failure}
  spec.description   = %q{Minitest reporter that automatically creates a screenshot on error or failure}
  spec.homepage      = "https://github.com/igorj/minitest-screenshot-reporter"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.8"
  spec.add_development_dependency "minitest-reporters", "~> 1.1"
  spec.add_development_dependency "gem-release", "~> 0.7"
  spec.add_development_dependency "geminabox", "~> 0.13"
  spec.add_development_dependency "coveralls"

  spec.add_dependency "minitest", ">= 5.0"
  spec.add_dependency "minitest-reporters", "~> 1.1"
  spec.add_dependency "capybara", "~> 2.6"
end
