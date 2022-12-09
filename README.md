# red_drop

Simple cli for automating droplet management with sane defaults baked in.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add red_drop

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install red_drop

## Usage

    $ red_drop

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sergio-ortiz/red_drop.

### Todos

-   Refactor: status module to match delete module droplets data structure
-   Refactor: delete module while loop to match that of red_drop.rb
-   Research: TDD whether its w/ minitest or rspec
-   Research: converting delete module droplets array to hash to avoid accidental deletions
-   Research: status module to get ip address of runnning droplets
-   Research: delete module to get droplet status before executing
-   Research: using cloud_init to automate server config for SSH, ufw, docker

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
