class PagesController < ApplicationController
	def hello
		render json: params["name"]
	end
end
