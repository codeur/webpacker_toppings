# WebpackerToppings
This gem provides helpers for Webpacker

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'webpacker_toppings'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install webpacker_toppings
```

## Usage
Include the helpers you need in your `app/helpers/application_helper.rb` :

```ruby
module ApplicationHelper
  include WebpackerToppings::Helpers::Packs
end
```

### Helpers
- [`WebpackerToppings::Helpers::Packs`](https://github.com/codeur/webpacker_toppings/blob/main/lib/webpacker_toppings/helpers/packs.rb)



## Development and testing
```bash
  git clone git@github.com:codeur/webpacker_toppings.git
  cd webpacker_toppings
  bundle install
  cd test/dummy && bundle install && yarn install && cd ../..
  bin/test
```
## Release
Before all, configure your credentials for RubyGems :

 1. Login to RubyGems
 2. Create a token which have rights to push gems (https://rubygems.org/profile/api_keys)
 3. Add it to your config:
   ```
   echo ":rubygems_api_key: YOUR_API_KEY" >> ~/.gem/credentials
   ```

You just have to run default command:
```
rake release
```

Else, to publish a new version of this gem, you'll need to build it with
`gem build webpacker_toppings.gemspec` and then push it manually:
```
gem push webpacker_toppings-X.X.X.gem
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT). Copyright 2021 Codeur SARL.
