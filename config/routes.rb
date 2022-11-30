Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  root 'pages#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_scope :user do
  #   get 'users', to: 'devise/sessions#new'
  # end
  # get 'user/:id', to: 'users#show', as: 'user'
  # Alternatively use the resources route as below. It achieves the same result
  resources :users, only: [:show]
  # Defines the root path route ("/")
  # root "home#index"
end
