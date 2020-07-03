require 'rails_helper'

RSpec.describe "Bmis", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/bmi/index"
      expect(response).to have_http_status(:success)
    end
  end

end
