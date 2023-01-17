Rails.application.routes.draw do
  # get 'login/create'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :entries
      resources :quotes
      resources :keywords
    end
  end

end
