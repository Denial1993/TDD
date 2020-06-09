class BmiController < ApplicationController
  def index
    @bmi_calculator = BmiCalculator.new
  end

  def result
    @bmi_calculator = BmiCalculator.new(bmi_calculator_params)

    if @bmi_calculator.valid?
      @bmi = @bmi_calculator.perform
    else
      render :index
    end
  end

  private
  def bmi_calculator_params
    params.require(:bmi_calculator).permit(:body_height, :body_weight)
  end
end