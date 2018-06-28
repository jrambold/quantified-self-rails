FactoryBot.define do
  factory :meal do
    sequence(:name) { |i| "meal #{i}" }
  end
end
