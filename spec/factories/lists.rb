FactoryGirl.define do
  factory :list do
    description "My list"
    public false
    association :owner, factory: :user, email: "jon2@example.com"
  
    factory :list_with_tasks do
      ignore do
        tasks_count 5
      end

      after(:create) do |list, evaluator|
        FactoryGirl.create_list(:task, evaluator.tasks_count, list: list)
      end
    end
  end
end
