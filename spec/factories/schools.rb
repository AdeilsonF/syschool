FactoryGirl.define do
  factory :school do
    name { FFaker::Education.school_name }
    email { FFaker::Internet.email }
    pitch { FFaker::Book.description }
    subdomain { FFaker::Internet.domain_name }
  end
end
