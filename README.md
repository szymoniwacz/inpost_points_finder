# InpostPointsFinder

> Simple Ruby gem for searching InPost delivery points via public API.

---

## Installation

Add to your application's Gemfile:

```ruby
gem 'inpost_points_finder'
```

And then execute:

```sh
bundle
```

Or install directly:

```sh
gem install inpost_points_finder
```

---

## Usage

### Get all points of a given type

Returns array of all points with given type (e.g. type 1):

```ruby
InpostPointsFinder.get_points(type: 1)
```

### Get a single point by ID

Returns data of point with id `CSZ01A`:

```ruby
InpostPointsFinder.get_point("CSZ01A")
```

### Render a select tag with points as options

In Rails views, renders all points of given type as `<option>` tags:

```erb
<%= inpost_points_select(1) %>
```

### Custom API endpoint configuration

You can change the API base URL (default: `https://api-pl.easypack24.net/v4/machines`):

```ruby
InpostPointsFinder.configure do |config|
  config.endpoint = 'https://custom-api-url.example'
end
```

---

## Development

After checking out the repo, run:

```sh
bin/setup
```

to install dependencies. Then run:

```sh
rspec
```

to execute the tests.

You can also run:

```sh
bin/console
```

for an interactive Ruby prompt with the gem loaded.

To install this gem onto your local machine:

```sh
bundle exec rake install
```

To release a new version:  
Update the version number in `version.rb`, then:

```sh
bundle exec rake release
```

---

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/szymoniwacz/inpost_points_finder](https://github.com/szymoniwacz/inpost_points_finder).

---

## License

This project is open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
