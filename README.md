# InpostPointsFinder

This gem allows to search for InPost delivery points.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inpost_points_finder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inpost_points_finder

## Usage

### Get all points with specified type

Returns array of all points with type 1.
```ruby
InpostPointsFinder.get_points(type: 1)
```

### Get one point by id

Returns data of point with id CSZ01A.
```ruby
InpostPointsFinder.get_point("CSZ01A")
```

### Displays select tag with points of specified type as options

Returns array of all points with type 1.
```ruby
<%= inpost_points_select(1) %>

```

### Custom configuration

If you want to use different endpoint from default ("https://api-pl.easypack24.net/v4/machines") for points API.

```ruby
InpostPointsFinder.configure do |config|
  config.endpoint = 'new_endpoint_url'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/szymoniwacz/inpost_points_finder.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

