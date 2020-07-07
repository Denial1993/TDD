module ApplicationHelper
	def user_gender(gender)
	    if gender == 1
	      "男"
	    elsif gender == 0
	      "女"
	    else
	      "不想說"
	    end
	end

	def icon_link_to(label, path, icon)
	    link_to path do
	      content_tag :span, class: "glyphicon glyphicon-#{icon}" do
	        label
	      end
    	end
  	end

end


=begin
View Helper 的使用規則
雖然 View Helper 的方法寫在 app/helpers 目錄下的隨便哪個檔案都可以，但檔名以及模組名稱是有規則的：

模組名稱需為 XXXXHelper，例如 UserHelper 或是 PostHelper。
若模組名稱是 UserHelper，檔案名稱為 user_helper.rb；如果是 PostHelper，檔名則為 post_helper.rb，依此類推。
雖然 View Helper 的方法要寫在哪個 Helper 模組都可以，但模組會按照模組的名字的英文字母順序依序載入，例如 PostHelper 會比 UserHelper 先載入，
也就是說如果這兩個模組上有名字一樣的方法，先載入方法的會被後載入的覆蓋掉，這點需要特別注意。
=end

