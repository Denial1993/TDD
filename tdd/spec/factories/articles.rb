FactoryBot.define do
  factory :article do
    title { "MyString" }
    content { "MyText" }
    is_online { false }
  end
end
