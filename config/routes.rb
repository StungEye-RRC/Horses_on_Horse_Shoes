Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :breeds, only: %i[index show]
  resources :horses, only: :show do
    collection do
      get :search
    end
  end

  root to: "breeds#index"
end
