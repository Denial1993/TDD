Rails.application.routes.draw do
	resources :candidates do
		member do
			post :vote
		end
	end

=begin
  get 'bmi' , to: "bmi#index"
  post "bmi/result" ,to: "bmi#result"

	get "/hello_world" ,to: "pages#hello"

	resources :orders do
		collection do
			get :cancelled
		end
	end
	namespace :denial do
  		resources :users do
  			resources :posts
  		end
  	end	


  resource :cart, only:[:show, :destroy] do
    collection do
      post :add, path:'add/:id'
    end
  end
=end
end

