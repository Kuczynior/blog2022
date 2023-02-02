Rails.application.routes.draw do
  namespace :admin do
    resources :articles
    resources :comments
    resources :users
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index"
  resources :articles do
    resources :comments
      resources :pages do
        collection do 
      get :wesprzyj_nas
      get :wolontariat
      get :o_nas
        end
      end
    end
  end




