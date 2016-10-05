FactoryGirl.define do
  factory :post do
    title {Faker::Hipster.sentence}
    content { "<p>#{Faker::Lorem.paragraphs(15).join("</p><p>")}</p>" }
    created_at {Faker::Time.backward}
    association :user
  end
end
