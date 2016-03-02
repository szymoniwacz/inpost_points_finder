require "inpost_points_finder/view_helpers"

module InpostPointsFinder
  class Railtie < Rails::Railtie
    initializer "inpost_points_finder.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
