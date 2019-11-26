Rails.application.routes.draw do

  #root to: 'pages#home'
  root to: 'videos#index'
  devise_for :users
  resources :subscribers do
    collection do
      get :payment
    end
  end
  resources :videos do
    collection do
      get :subscribe
    end
  end

  resources :logins do
    collection do 
      post :new_login
    end
  end

  resources :billings

  # get '/card/new' => 'billing#new_card', as: :add_payment_method
  # post "/card" => "billing#create_card", as: :create_payment_method
  # get '/success' => 'billing#success', as: :success
  # post '/subscription' => 'billing#subscribe', as: :subscribe

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
