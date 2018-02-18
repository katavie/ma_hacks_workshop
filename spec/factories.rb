FactoryBot.define do
  factory :artist do
    sequence(:name) { |n| "Test Artist#{n}" }
    description 'Some description about artist'
  end

  factory :album do
    sequence(:name) { |n| "Test Album#{n}" }
    duration_in_seconds 120
    artist
  end
end

