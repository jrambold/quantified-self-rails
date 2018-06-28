require 'rails_helper'

describe Meal, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'relationships' do
    it { should have_many(:food_meals) }
    it { should have_many(:foods) }
  end
end
