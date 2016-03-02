require "inpost_points_finder/version"
require "inpost_points_finder/config"
require "rest-client"
require "inpost_points_finder/methods"
require "json"
require "inpost_points_finder/railtie"

module InpostPointsFinder
  extend Methods

  def self.config
    @config ||=  Config.new
  end

  def self.configure
    yield(config) if block_given?
  end
end
