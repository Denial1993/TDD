require 'rails_helper'

RSpec.describe Cart, type: :model do
	
	describe "購物車基本功能" do
		it "可以把商品丟到購物車裡面,然後購物車裡就有東西了" do
			cart = Cart.new							#新增一個購物車
			cart.add_item 1							#把一個商品丟到購物車內
			expect(cart.empty?).to be false			#期望值跟實際要相同,不能是空的,否則測試不會過.
		end

		it "如果加了相同種類的商品到購物車裡，購買項目（CartItem）並不會增加，但商品的數量會改變" do
			cart = Cart.new #新增一個購物車

			3.times{cart.add_item(1)}		#放三次商品一號
			5.times{cart.add_item(2)}		#放五次商品二號
			2.times{cart.add_item(3)}		#放兩次商品三號

			expect(cart.lengh).to be (3)   #總共應該要有三個測試商品  <=我指商品序號拉
			expect(cart.items.first.quantity).to be (3)   #第一份商品應該要有三個
			expect(cart.items.second.quantity).to be (5)   #第二份商品應該要有三個
		end

	    it "商品可以放到購物車裡，也可以再拿出來" do
	    	cart = Cart.new
	    	good1 = Good.create(title: "七龍珠")	#建立商品1
	    	good2 = Good.create(title: "冒險野郎")	#建立商品2

	    	4.times{cart.add_item(good1.id)} #放四次的商品1
	    	2.times{cart.add_item(good2.id)} #放兩次的商品2

	    	expect(cart.items.first.product_id).to be good1.id # 第一個商品的id 應當與 商品一個id 相同
			expect(cart.items.second.product_id).to be good2.id # 第 2 個 item 的商品 id 應該會等於商品 2 的 id
      		expect(cart.items.first.good).to be_a Good # 第 1 個 item 拿出來的東西應該是一種商品
	    end

	    it "可以計算整台購物車的總消費金額"  do
	    	cart = Cart.new
	    	
	    	good1 = Good.create(title: "七龍珠" , price: 80) 	#建立第1個商品
			good2 = Good.create(title: "冒險野郎", price: 200) 	#建立第2個商品	    	

			3.times {
				cart.add_item(good1.id)
				cart.add_item(good2.id)
			}

			expect(cart.total_price).to be 840
	    end

	    #it "特別活動可能可搭配折扣（例如聖誕節的時候全面打 9 折，或是滿額滿千送百）" 
    end

    describe "購物車進階功能" do
	    it "可以將購物車內容轉換成 Hash，存到 Session 裡" do
	    	cart = Cart.new
	    		3.times {cart.add_item(2)} #新增商品 ID 2
	    		4.times {cart.add_item(5)} #新增商品 ID 5

	    		expect(cart.serialize).to eq session_hash
	    	end
	    it "可以把 Session 的內容（Hash 格式），還原成購物車的內容" do
	    	cart = Cart.from_hash(session_hash)

	    	expect(cart.items.first.product_id).to be 2
	    	expect(cart.items.first.quantity).to be 3
		    expect(cart.items.second.product_id).to be 5
		    expect(cart.items.second.quantity).to be 4
	    end
	end

	private

	  	def session_hash
	  		{
	  			"items" => [		
	  				{ "product_id" => 2 , "quantity" => 3 } ,
	  				{ "product_id" => 5 , "quantity" => 4 }
	  			]
	  		}
	  	end
end
