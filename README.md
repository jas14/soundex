# Soundex

This gem is an implementation of the Russell Soundex algorithm. It's very similar to the [US National Archives Soundex system](https://www.archives.gov/research/census/soundex), except consonants with the same code separated by a vowel are _not_ coalesced.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'soundex'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install soundex

## Usage

```ruby
require 'soundex'

Soundex::Code.from('Smith') # => S530
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jas14/soundex. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/jas14/soundex/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Soundex project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jas14/soundex/blob/master/CODE_OF_CONDUCT.md).
