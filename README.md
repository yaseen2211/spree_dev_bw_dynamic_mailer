# SpreeBwDynamicMailer

Introduction goes here.

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'spree_bw_dynamic_mailer', github: '[your-github-handle]/spree_bw_dynamic_mailer'
  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g spree_bw_dynamic_mailer:install
  ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.

## Testing

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_bw_dynamic_mailer/factories'
```


## Contributing

If you'd like to contribute, please take a look at the
[instructions](CONTRIBUTING.md) for installing dependencies and crafting a good
pull request.

Copyright (c) 2019 [name of extension creator], released under the New BSD License




5. Gems Installation Instruction

1)

Please ad these gem into your gem file

gem 'spree_bw_dynamic_mailer', github: '[your-github-handle]/spree_bw_dynamic_mailer'

gem 'ckeditor', github: 'yaseen2211/ckeditor', branch: 'master'
gem 'spree_mail_settings', github: 'spree-contrib/spree_mail_settings'

2)


Then run

bundle install
