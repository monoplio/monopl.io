FactoryBot.define do
  factory :player do
    username { Faker::Internet.username }
    x { 1 }
    y { 0 }
    balance { 1500 }
    game { build(:game) }
  end
end
