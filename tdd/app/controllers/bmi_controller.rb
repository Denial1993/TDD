class BmiController < ApplicationController
  def index
  end

  def result #這些params 參數都是使用者從 browser 輸入資料 然後帶入 view.html.erb 然後 從那邊取過來的 params 再帶入 bmi_controller.eb 裡面去做運算。
  	h = params[:body_height].to_f/100
  	w = params[:body_weight].to_f
  	a = params[:age].to_i
  	g = params[:gender].to_i #後面要加入to_i 或者 to_f   ,  不然params 從view 取過來的都是 『字串』 型態

  	@bmi = (w / (h * h)).round(2)
  	@fat_rate = ((1.2 * @bmi) +(0.23 * a - 5.4) - (10.8 * g)).round(2)
  end
end

