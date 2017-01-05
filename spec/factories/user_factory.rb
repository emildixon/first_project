FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com"}
  factory :user do
    email 
    password "1234567890"
    first_name "Johnny"
    last_name "Test"
    admin false
  end

  factory :admin, class: User do
    email
    password "qwertyuiop"
    admin true
    first_name "Admin"
    last_name "User"
  end

  factory :userTwo, class: User do
    email
    password "testpass1234"
    first_name "User"
    last_name "Two"
    admin false
  end
end