class Store < ApplicationRecord
	belongs_to :user,optional: true
end
#仔細看一下裡面的錯誤訊息是「User must exist」，也就是必須要有「頭」才行，
#這是 Rails 5 之後對 belongs_to 加入的新限制。但如果覺得這樣有點麻煩想要關掉，可在 belongs_to 後面加上 optional: true 的參數：

=begin
2. has_one 跟 belongs_to 方法需要同時設定嗎？
不一定，端看實際需求而定。以我們上面 User 跟 Store 的例子來看，如果不需要「從 Store 反查 User」的功能，那 belongs_to 就不需要設定了。
=end