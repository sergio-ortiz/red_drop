# RedDrop

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add red_drop

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install red_drop

## Usage

require "red_drop"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Todos

-   Research making gem executable
-   Research TDD and minitest vs rspec
-   refactor status module to match delete module droplets var structure
-   maybe convert delete module droplets array to hash with array index as key to avoid accidental deletions
-   refactor delete while loop to match that of red_drop.rb
-   refactor auth to use Faraday which is used by DropletKit
-   refactor status to get ip address of runnning droplets
-   Research having delete get status before executing
-   use cloud_init to automate server config for SSH, ufw, docker

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sergio-ortiz/red_drop.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
