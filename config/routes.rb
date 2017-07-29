Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  resources :blogs do
  	member do
  	  get :post_status
  	end
  end
  
  root to: 'pages#home'
end
