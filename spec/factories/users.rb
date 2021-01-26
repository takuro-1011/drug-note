FactoryBot.define do
  factory :user do
    name                    { "山田太朗" }
    name_kana               { "ヤマダタロウ" }
    email                   { Faker::Internet.free_email }
    phone_number            { '00000000000' }
    birthday                { "1991-06-11" }
    password                { "test000" }
    password_confirmation   { "test000" }
    allergy                 { "ああああ" }
  end
end