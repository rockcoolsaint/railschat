Rails.application.routes.draw do
  get 'rooms/index'
  resources :rooms do
    resources :messages
  end
  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'user', to: 'devise/sessions#new'
  end
  # Defines the root path route ("/")
  # root "home#index"
end
