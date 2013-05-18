FactoryGirl.define do
  factory :list do
    description "My list"
    public false
    association :user, factory: :user, email: "jon2@example.com"
  end
end
