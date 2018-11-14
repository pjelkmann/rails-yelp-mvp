Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:show, :new, :index, :create, :destroy] do
    resources :reviews, only: [:create]
  end
end
