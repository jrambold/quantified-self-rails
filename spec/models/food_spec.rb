require 'rails_helper'

describe Food, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:calories) }
  end

  describe 'relationships' do
    it { should have_many(:food_meals) }
    it { should have_many(:meals) }
  end
end
