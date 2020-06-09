class BmiCalculator
  include ActiveModel::Model
  attr_accessor :body_height, :body_weight

  validates :body_height, :body_weight, presence: true

  def perform
    height = body_height.to_f / 100   # 把單位換算成公尺
    weight = body_weight.to_f

    # BMI 計算公式: BMI = 體重(單位：公斤) / 身高平方(單位：公尺).
    (weight / (height * height)).round(2)
  end
end