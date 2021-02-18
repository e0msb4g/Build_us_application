FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'1111aaaa'}
    password_confirmation {password}
  end
end
