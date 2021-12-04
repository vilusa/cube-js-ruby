<p align="center"><a href="https://cube.dev"><img src="https://i.imgur.com/zYHXm4o.png" alt="Cube.js" width="300px"></a></p>

__Cube.js is an open-source analytical API platform.__ It is primarily used to build internal business intelligence tools or add customer-facing analytics to existing applications.

Cube.js was designed to work with serverless data warehouses and query engines like Google BigQuery and AWS Athena. A multi-stage querying approach makes it suitable for handling
trillions of data points. Most modern RDBMS work with Cube.js as well and can be
further tuned for performance.

For more details, see the [Cube.js introduction](https://cube.dev/docs/cubejs-introduction) page in our documentation.

# cube.js Ruby Client

The cube.js REST API gem allows Ruby developers to access the cube.js service programmatically.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cube_js'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cube_js


## Getting Started

cube.js Ruby Client need to be configured before they can start making API calls.

### Using with initializer

You can will configure with parameters
```ruby
client = CubeJS::Client.new api_toke: 'API_TOKEN', base_url: 'https://api.example.com/v1'
```

### Using with ENV variables

You can set the cube server keys using environment variables.

Set the `CUBEJS_API_TOKEN` and `CUBEJS_BASE_URL` env var to the name of the env vars containing the cube server credentials. (Example with set `CUBEJS_API_TOKEN=API_TOKEN` and `CUBEJS_BASE_URL=https://api.example.com/v1` now cube.js client will use the values of the cube server credentials env var when initializing
```ruby
ENV['CUBEJS_BASE_URL'] = 'https://api.example.com/v1'
ENV['CUBEJS_API_TOKEN'] = 'API_TOKEN'

client = CubeJS::Client.new
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vilusa/cubejs-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/vilusa/cubejs-ruby/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CubeJs project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/cube_js/blob/master/CODE_OF_CONDUCT.md).
