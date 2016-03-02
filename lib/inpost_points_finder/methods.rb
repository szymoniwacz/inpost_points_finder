require "httparty"

module InpostPointsFinder
  module Methods
    def get_point(id)
      Rails.cache.fetch("#{config.endpoint}/id/#{id}"){HTTParty.get("#{config.endpoint}/#{id}").parsed_response}
    end

    def get_points(type: nil)
      Rails.cache.fetch("#{config.endpoint}/type/#{type}") do
        response = HTTParty.get("#{config.endpoint}?type=#{type}")
        response.code == 200 ? response.parsed_response['_embedded']['machines'] : response.parsed_response
      end
    end
  end
end
