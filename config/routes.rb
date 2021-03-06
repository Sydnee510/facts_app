Rails.application.routes.draw do
  devise_for :users, path_names: {
    sign_up: 'register_not_allowed'
  }
  root to: 'myths#index'
  resources :myths do 
    resources :myths, only: [:index, :new, :show]
    resources :facts 
  end
  #resources :facts
  #get '/facts/search', to: 'facts#search', as: 'facts_search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
