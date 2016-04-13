FactoryGirl.define do
  factory :grunt do
    message { Faker::Lorem.sentence }
    zombie
  end
end
