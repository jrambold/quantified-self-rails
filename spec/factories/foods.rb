FactoryBot.define do
  factory :food do
    sequence(:name) { |i| "food #{i}" }
    calories 1
  end
end
