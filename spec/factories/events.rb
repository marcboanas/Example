FactoryGirl.define do
  sequence :lat do |n|
    "#{n}.0".to_f
  end

  sequence :lon do |n|
    "#{n}.0".to_f
  end

  sequence :name do |n|
    "name #{n}"
  end

  sequence :started_at do |n|
    Time.zone.now + n.hours
  end

  factory :event do
    lat
    lon
    name
    started_at
    owner factory: :user
  end
end
