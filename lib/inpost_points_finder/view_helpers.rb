module InpostPointsFinder
  module ViewHelpers
    def inpost_points_select(type, options = {})
      select_tag(:inpost_point, options_for_select(points(type)), options)
    end

    private

      def points(type)
        InpostPointsFinder.get_points(type: type).collect do |point|
          [point['address_str'], point['id']]
        end
      end
  end
end
