FactoryBot.define do
  factory :user do
    first_name "Arden"
    last_name "Zhan"
    email "arden@protonmail.ch"
    city "Austin"
    state "TX"
    password "password"
    password_confirmation "password"
  end
end
