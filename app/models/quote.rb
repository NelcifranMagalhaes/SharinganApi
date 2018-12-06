class Quote
  	include Mongoid::Document

	belongs_to :user
	field :citation,type: String, default: ""
	field :author,type: String, default: ""
	field :author_about,type: String, default: ""
	field :tags,type: String, default: ""
end
