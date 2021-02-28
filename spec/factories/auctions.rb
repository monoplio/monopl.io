FactoryBot.define do
  factory :auction do
    game { build(:game) }
    property { build(:property) }
  end
end
