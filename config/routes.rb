Rails.application.routes.draw do
  resources :breeds, only: %i[index show]
  resources :horses, only: :show do
    collection do
      get :search
    end
  end

  root to: "breeds#index"
end
