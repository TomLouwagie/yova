Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # API routes
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :clients, only: [ :index, :show ]
    end
  end
end
