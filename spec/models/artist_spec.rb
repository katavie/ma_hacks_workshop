require 'rails_helper'

describe Artist, type: :model do
  context 'associations' do
    it { should have_many(:albums) }
  end

  context 'validations' do
    subject { FactoryBot.create(:artist) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end

