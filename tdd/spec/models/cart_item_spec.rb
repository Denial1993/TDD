require 'rails_helper'

RSpec.describe CartItem, type: :model do
  it "每個 Cart Item 都可以計算它自己的金額（小計）" do
  	p1 = Product.create(title: "七龍珠",	price: 80)
  	p2 = Product.create(title: "冒險野郎", price: 200)

  	cart = Cart.new
  	3.times { cart.add_item(p1.id) }
  	4.times	{ cart.add_item(p2.id) }
  	2.times	{ cart.add_item(p1.id) }

  	expect(cart.items.first.price).to be 400
  	expect(cart.items.second.price).to be 800

  end
end
