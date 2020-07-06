FactoryBot.define do
  factory :candidate do
    name { "MyString" }
    party { "MyString" }
    age { 1 }
    politics { "MyText" }
    votes { 1 }
  end
end
