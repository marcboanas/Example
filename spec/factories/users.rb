FactoryGirl.define do  
  sequence :token do
    SecureRandom.hex(3)
  end
  
  sequence :email do |n|
    "#{n}email@email.com"
  end

  factory :user do
    device_token { generate(:token) }
    name { "Test" }
    email
    password { "password123" }
    password_confirmation { "password123" }
  end
end
