FactoryBot.define do
  factory :drug do
    drug_name            { "てすと" }
    hospital             { "てすと" }
    effect               { "てすと" }
    day_id               { "2020/01/01" }
    image                { Faker::Lorem.sentence }
    capa_id              { 2 }
    association :user

    after(:build) do |drug|
      drug.image.attach(io: File.open('public/images/okusuri_techou.png'), filename: 'test.image_png')
    end
  end
end
