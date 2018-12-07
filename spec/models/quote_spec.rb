require 'rails_helper'

RSpec.describe Quote, type: :model do
  	it 'Quote is valid?' do
		quote = create(:quote)
	  	expect(quote).to be_valid
	end
end
