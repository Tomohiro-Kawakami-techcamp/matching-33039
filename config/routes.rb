Rails.application.routes.draw do
  devise_for :users
  get 'tops/index'
  root "tops#index"
  resources :profiles do
    resources :votes, only: [:create]
    resources :result, only: [:index]
  end
  resources :thanks, only: [:index] do
    resources :messages, only: [:index, :create]
  end
end