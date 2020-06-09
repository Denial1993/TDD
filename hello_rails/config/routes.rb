Rails.application.routes.draw do
	resources :superbikes do
		member do
			post :vote
		end
	end
	resources :candidates
	get  "/bmi" , to: "bmi#index"
	post "/bmi/result" ,to: "bmi#result"
	get	 "/hello_world" , to: "pages#hello"
	resources :posts
	resources :users
end
