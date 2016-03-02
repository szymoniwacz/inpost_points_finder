# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inpost_points_finder/version'

Gem::Specification.new do |s|
  s.name          = "inpost_points_finder"
  s.version       = InpostPointsFinder::VERSION
  s.authors       = ["Szymon Iwacz"]
  s.email         = ["szymon@iwacz.pl"]

  s.summary       = %q{InPost points finder.}
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  s.require_paths = ["lib"]
  s.test_files    = s.files.grep(%r{^(spec)/})

  s.add_dependency "rest-client", "~> 1.8.0"
  s.add_dependency "json"
  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "httparty"
  s.add_dependency "webmock"

  s.add_development_dependency "bundler", "~> 1.11"
  s.add_development_dependency "rake", "~> 10.5"
  s.add_development_dependency "rspec-rails", "~> 2.9"
  s.add_development_dependency "sqlite3"
end
