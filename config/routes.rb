Rails.application.routes.draw do
  # resources :doses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
  # resources :ingredients

  root to: 'cocktails#index'
end
