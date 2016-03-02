require 'spec_helper'

describe InpostPointsFinder do
  context 'methods' do
    describe '.get_point' do
      let(:http_response) { "OK" }
      let(:key) {"#{subject.config.endpoint}/id/CSZ01A"}

      before do
        stub_request(:get, /api-pl.easypack24.net\/v4\/machines\/CSZ01A/).to_return(body: http_response)
        Rails.cache.clear
      end

      it "queries the endpoint for one point data" do
        expect(subject.get_point("CSZ01A")).to eq http_response
      end

      it "caches" do
        subject.get_point("CSZ01A")
        expect(Rails.cache.exist?(key)).to eq true
      end
    end

    describe '.get_points' do
      let(:http_response) {eval("{'_embedded' => {'machines' => 'OK'}}").to_json}
      let(:key) {"#{subject.config.endpoint}/type/1"}

      before do
        stub_request(:get, /api-pl.easypack24.net\/v4\/machines/)
          .to_return(status: 200, body: http_response, headers: {content_type: 'application/json'})
        Rails.cache.clear
      end

      it "queries the endpoint for one points type data" do
        expect(subject.get_points(type: "1")).to eq "OK"
      end

      it "caches" do
        subject.get_points(type: "1")
        expect(Rails.cache.exist?(key)).to eq true
      end
    end
  end
end
