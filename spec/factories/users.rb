FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'Billy'
    last_name 'Goat'
    email { generate :email }
    password "testtest"
    password_confirmation "testtest"
    phone "9018304494"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password "testtest"
    password_confirmation "testtest"
    phone "9018304494"
  end

  factory :non_auth_user, class: "User" do
    first_name 'Non'
    last_name 'Auth'
    email { generate :email }
    password "testtest"
    password_confirmation "testtest"
    phone "9018304494"
  end
end