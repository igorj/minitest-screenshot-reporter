# MinitestScreenshotReporter

[![Gem Version](http://img.shields.io/gem/v/minitest-screenshot-reporter.svg)][gem]
[![Build Status](http://img.shields.io/travis/igorj/minitest-screenshot-reporter.svg)][travis]
[![Dependency Status](http://img.shields.io/gemnasium/igorj/minitest-screenshot-reporter.svg)][gemnasium]
[![Code Climate](http://img.shields.io/codeclimate/github/igorj/minitest-screenshot-reporter.svg)][codeclimate]
[![Coverage Status](http://img.shields.io/coveralls/igorj/minitest-screenshot-reporter.svg)][coveralls]

[gem]: https://rubygems.org/gems/minitest-screenshot-reporter
[travis]: http://travis-ci.org/igorj/minitest-screenshot-reporter
[gemnasium]: https://gemnasium.com/igorj/minitest-screenshot-reporter
[codeclimate]: https://codeclimate.com/github/igorj/minitest-screenshot-reporter
[coveralls]: https://coveralls.io/r/igorj/minitest-screenshot-reporter


Minitest reporter that automatically creates a screenshot on error or failure. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-screenshot-reporter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-screenshot-reporter

## Usage

Use as any other minitest reporter with `Minitest::Reporters.use!

Example: Add following to your *test_helper.rb*:

```ruby
require 'minitest/reporters'
require 'minitest/reporters/screenshot_reporter'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new,
                          Minitest::Reporters::ScreenshotReporter.new]
```

Run your tests, and if there are errors or failures in your integration tests, check the directory *test/screenshots*.

You can also include the `Minitest::Reporters::Screenshot` module to your integration test class. Than you can use the method `screenshot(name)` to explicitly create additional screenshots in *test/screenshots* in your integration tests.     

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 

To release a new version, run `bundle exec rake release_patch`, `bundle exec rake release_minor`, oder `bundle exec rake release_major`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to https://rubygems.org.

## Contributing

Bug reports and pull requests are welcome on github at https://github.com/igorj/minitest-screenshot-reporter.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
