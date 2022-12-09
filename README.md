# red_drop

Simple "interactive" cli for automating digitalocean droplet management with sane defaults baked in for research and development.

Expirementing with the cloud can be expensive and stressful when you have to manually setup and take down Virtual Machines in order to avoid unwanted charges.

Have you ever wonderd "Hmmm... If only there was a simple way to have a linux server in the cloud so that I can fully take advantage of all those free new member credits"?

Most tools are not geared towards automating provisioning for simple research and development on cloud platforms. In fact they can be quite overwhelming with the multitude of different configurations they provide on all their cloud services.

red_drop is an easy to use tool that will take the stress out of provisioning and destroying droplets with reasonable configurations for research and development on digitalocean's cloud.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add red_drop

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install red_drop

## Usage

After installing the gem, simply enter the following command:

    $ red_drop

It will then try to look for a valid authentication token. If it can't find one it will prompt you for one. You can find yours or generate one from the API tab on your digitalocean dashboard panel.

In order to use this tool you will need a digitalocean account with a payment method on your account. You can use the referral link below to sign up with $200 of free credit for 60 days to use as your payment method.

[![DigitalOcean Referral Badge](https://web-platforms.sfo2.digitaloceanspaces.com/WWW/Badge%203.svg)](https://www.digitalocean.com/?refcode=9a321408e86f&utm_campaign=Referral_Invite&utm_medium=Referral_Program&utm_source=badge)

The referral will also help fund research and developmet on the project.

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
