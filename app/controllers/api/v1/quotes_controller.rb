class Api::V1::QuotesController < ApplicationController
#	before_action :set_quote, only: [:show, :update, :destroy]
#before_action :require_authorization!, only: [:show, :update, :destroy]
# GET /api/v1/quotes

def index
	render json: @quotes
end

# GET /api/v1/quotes/1

def show

	render json: @quote

end

def quotes
	searched_tag = spider(params[:search_tag])
	render json: searched_tag
end
# POST /api/v1/quotes


private

	def spider(search_tag)
		url = "http://quotes.toscrape.com/"
		unparsed_page = HTTParty.get(url)
		parsed_page = Nokogiri::HTML(unparsed_page)
		list_of_quotes = parsed_page.css('div.quote')
		list_quotes_json = Array.new()
		list_of_quotes.each do |q|
			quote = {
				quote: q.css('span.text').text,
				author: q.css('small.author').text,
				author_about: "http://quotes.toscrape.com" + q.css('a')[0].attributes["href"].value,
				tags: q.css('a.tag').map{|tag| tag.text}
			}
			if quote[:quote].include? search_tag
				list_quotes_json.push(quote)
			end
		end

		return list_quotes_json
	end

	# Use callbacks to share common setup or constraints between actions.

	# def set_quote

	# 	@quote = Quote.find(params[:id])

	# end

	# Only allow a trusted parameter "white list" through.

	def quote_params

		params.require(:quote).permit(:citation, :author, :author_about, :tags)

	end

	def require_authorization!

		unless current_user == @quote.user

			render json: {}, status: :forbidden

		end

	end
end
