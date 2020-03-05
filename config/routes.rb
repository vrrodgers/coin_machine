Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :transactions
    end
  end

  resources :coins
end
