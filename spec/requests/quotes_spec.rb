require 'rails_helper'

RSpec.describe "Quotes", type: :request do
  describe "GET /quotes" do
    it "JSON OK" do
    	string_searched = 'not'
    	get "/api/v1/quotes/quotes/#{string_searched}.json"
      	expect(response.content_type).to eq("application/json")
    end
    # it "return json" do
    # 	get "/api/v1/quotes/quotes/#{string_searched}.json"
    # 	parsed_response = JSON.parse(response.body)
    #   	expect(parsed_response['quote'].length).to_not be_nil
    # end
  end
end
