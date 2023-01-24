Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :entries
      resources :keywords
      post '/login', to: 'login#create'
      get '/profile', to: 'users#profile'
      resources :users
    end
  end

end
