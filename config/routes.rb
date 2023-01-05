Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pages do
    collection do 
      get :wesprzyj_nas
      get :wolontariat
      get :o_nas
    end
  end
end

