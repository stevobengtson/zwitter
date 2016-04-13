FactoryGirl.define do
  factory :comment do
    message { Faker::Lorem.sentence }
    zombie
    association :commentable
  end
end
