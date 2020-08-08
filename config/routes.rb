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
     end
    resources :private_shares, only: [ :new, :create ]
  end
end
