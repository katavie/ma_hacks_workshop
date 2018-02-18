require 'rails_helper'

RSpec.describe Album, type: :model do
  context 'associations' do
    it { should belong_to(:artist) }
  end

  context 'validations' do
    subject { FactoryBot.create(:album) }
    it { should validate_presence_of(:name) }
    it { should validate_numericality_of(:duration_in_seconds) }
  end
end
