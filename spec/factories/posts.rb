# create a factory we can use throughout our specs
FactoryGirl.define do
  factory :post do |f|
    f.title { Faker::Lorem.word }
    f.content { Faker::Lorem.paragraph(2) }
  end
end