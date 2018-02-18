FactoryBot.define do
  sequence :name do |n|
    "Test Artist#{n}"
  end

  factory :artist do
    name
    description 'Some description about artist'
  end
end

