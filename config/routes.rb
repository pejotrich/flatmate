Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "dashboard", to: "pages#dashboard"
  # get "dashboard", to: "dashboards#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :requests do
     resources :offers do
      post :accept
      post :decline
      resources :messages, only: [ :create]
     end
    resources :private_shares, only: [ :new, :create ]
  end

  resources :offers, only: [ :index, :show1 ] do
    get :show1
    resources :messages, only: [ :create]
  end
end
