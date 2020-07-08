FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyText" }
    price { "9.99" }
    is_available { false }
    store_id { 1 }
  end
end
