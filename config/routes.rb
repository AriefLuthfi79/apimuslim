Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :auth, only: :create
      resources :events, only: :index
    end
  end
end
