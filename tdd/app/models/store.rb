class Store < ApplicationRecord
	belongs_to :user,optional: true
	has_many :products
end
#仔細看一下裡面的錯誤訊息是「User must exist」，也就是必須要有「頭」才行，
#這是 Rails 5 之後對 belongs_to 加入的新限制。但如果覺得這樣有點麻煩想要關掉，可在 belongs_to 後面加上 optional: true 的參數：

=begin
2. has_one 跟 belongs_to 方法需要同時設定嗎？
不一定，端看實際需求而定。以我們上面 User 跟 Store 的例子來看，如果不需要「從 Store 反查 User」的功能，那 belongs_to 就不需要設定了。



-----

常見問題
has_many 後面一定要接複數嗎? 設定單數會怎樣?
不會怎樣，只是有點違反 Rails 的慣例，例如我把原來的 has_many :products 改成 has_many :product：

>> store1 = Store.first
  Store Load (0.1ms)  SELECT  "stores".* FROM "stores" ORDER BY "stores"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> #<Store id: 1, title: "太空膠囊公司", ...[略]..., updated_at: "2017-01-02 13:49:11">
然後就發現原來的 products 方法不能用了（因為沒設定了當然不能用）：
=end

