Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:create, :show, :index, :new]

  resources :reviews, only: :destroy

  resources :restaurants do
    resources :reviews, only: [:create]
  end
end
