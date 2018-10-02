Rails.application.routes.draw do
  root to: 'static#index'

  get 'search' => 'static#search'
  resources :movies, only: [:show]

  resources :watch_lists, only: [] do
  	collection do
  		post :add
  		post :remove
  	end
  end

  resources :seens, only: [] do
  	collection do
  		post :add
  		post :remove
  	end
  end


end
