Rails.application.routes.draw do
  devise_for :users
  root to: 'users/wallets#show'

  namespace :users do
    resource :wallet, only: :show do 
      member do
        get :mobile_view
      end
    end
  end
end
