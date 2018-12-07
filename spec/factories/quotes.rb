FactoryBot.define do
  factory :quote do
    citation {Faker::Lorem.paragraph}
    author {Faker::Science.scientist}
    author_about {Faker::Internet.url('http://quotes.toscrape.com')}
    tags {"[\"easy\", \"GG\", \"science\", \"world\"]"}
    user
  end
end
