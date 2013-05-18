FactoryGirl.define do
  factory :user do
    email "jonh@me.com"
    password "secrect_password"
    password_confirmation "secrect_password"
  end
end
