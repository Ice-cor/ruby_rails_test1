Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
  namespace :api do
    namespace :v1 do
      # /api/v1
      resources :validation_code, only: [:create]
      resource :session, only: [:create, :destroy]
      resource :me, only: [:show]
      resource :items
      resources :tags
    end
  end
end
