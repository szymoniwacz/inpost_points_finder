$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require File.expand_path("../dummy_rails_app/config/environment.rb",  __FILE__)
require 'rspec/rails'
require 'webmock/rspec'
require 'inpost_points_finder'
