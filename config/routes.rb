Rails.application.routes.draw do
  ActiveSupport::Deprecation.silence do
    get 'ui(/:action)', controller: 'ui'  
  end

  root         to: 'videos#index'
  get '/home', to: 'videos#index'

  resources :videos, only: [:index, :show] do
    collection do
      get :search, to: 'videos#search'
    end
  end

  resources :categories, only: [:show]
end
