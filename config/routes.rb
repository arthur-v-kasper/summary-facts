Rails.application.routes.draw do
  root 'pages#index'
  
  namespace :api do
    namespace :v1 do
      resources :categories, param: :slug, only: [:index, :show]
      resources :facts, param: :slug
      resources :keywords, only: [:create, :index]
    end
  end
end