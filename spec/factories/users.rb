FactoryGirl.define do
  factory :user do
    name "Test User"
    # email "test@example.com"
    account_number "91437751"
    password "please123"
    
    trait :admin do
      role 'admin'
    end
  end
end