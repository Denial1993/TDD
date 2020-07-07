class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  #scope :available,-> {where(is_available: true)}
  scope :price_over, -> (p){where(["price > ?" , p])}
  #下面是類別方法,跟 上面scope是一樣的東西
  def self.available
    where(is_available: true)
  end
end
#通常我們會把這種所謂的「商業邏輯」盡量放到 Model 裡（「現在可以上架販售的商品」就是一種商業邏輯），除了可增加程式碼的可讀性，也可以在各個地方重複使用。
#在 Rails 的 Model 有提供一種 scope 的寫法可以讓你完成這件事
#通常如果是簡單的條件，我個人會偏好把它放在 scope 裡，如果是比較複雜的條件，則會建議放在類別方法裡

#預設 Scope
#Rails 的 Model 還有提供 default_scope 的方法，可以幫所有的查詢都預設套上這個條件：  default_scope { order('id DESC') }