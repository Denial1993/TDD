class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

=begin
*all, where, order, limit
使用 all 方法可取得所有資料，取得資料將存放在陣列裡：

Candidate.all
where 方法則會再加上一些條件做為篩選：

Candidate.where("age > 18", gender: "female")
這樣可取得「女性且大於 18 歲」的候選人。但如果要分開兩段寫也是可以：	

-------
*count, average, sum, maximum, minimum
想要知道總共有多少筆數，可使用 count 方法：
使用 sum 或 average 方法就可以請資料庫直接幫我們做計算。
最大值跟最小值也是一樣，千萬不要傻傻的用 all 全部抓出來再跑迴圈或寫什麼排序演算法，直接使用 maximum 或 minimum 方法請資料庫幫你算就好
-----------
CRUD 之 U（Update）
更新資料常用的有 save、update、update_attribute 及 update_attributes 方法：
=end