FactoryGirl.define do
  factory :graveyard do
    name { Faker::Name.name }
    address { "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state_abbr}, #{Faker::Address.zip} USA" }
  end
end
