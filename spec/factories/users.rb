FactoryGirl.define do
  
  sequence :token do
    SecureRandom.hex(3)
  end

  factory :user do
    device_token { generate(:token) }
  end
end
