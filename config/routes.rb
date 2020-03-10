Rails.application.routes.draw do
  resources :posts
	root to: "posts#index"
  devise_for :admins
  get 'pages/index'
	root to: "pages#index"
	
  devise_for :users
  devise_scope :user do
	get '/users/sign_out' => 'devise/sessions#destroy'

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
