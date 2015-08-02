FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email}
    phone { "555#{Array.new(7) { rand(10).to_s }.join}"}
    school_id { create(:school).id }
    password "hellohello"
    password_confirmation "hellohello"
  end

  factory :school do
    name { "#{Faker::Company.name} High School" }
    address { "#{Faker::Address.street_address}, Chicago, IL" }
  end
end