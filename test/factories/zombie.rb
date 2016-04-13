FactoryGirl.define do
  factory :zombie do
    name { Faker::Name.name }
    graveyard
    status { Faker::Lorem.sentence }
  end
end
