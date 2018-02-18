FactoryBot.define do
  sequence :trello_id do |n|
    "id#{n}"
  end

  sequence :url do |n|
    "http://example.com/#{n}/index.html"
  end

  factory :artist do
    sequence(:name) { |n| "Test Artist #{n}" }
  end
end

