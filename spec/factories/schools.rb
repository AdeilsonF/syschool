FactoryGirl.define do
  factory :school do
    name { FFaker::Education.school }
    email { FFaker::Internet.email }
    pitch "MyString"
    subdomain { FFaker::Internet.domain_name }
  end
end
