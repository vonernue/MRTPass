Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  post 'sign_in'  => 'account#new_session'
  post 'sign_up'  => 'account#create'
  get  'session'  => 'account#get_session'
  post 'sign_out' => 'account#delete'
  patch 'update'  => 'account#update'
  patch 'password'=> 'account#update_pswd'
  namespace :api do
    namespace :admin do
      resources :authorization, except: [:create]
    end
    namespace :mrt_admin do
      resources :announce
      resources :station
      resources :info do
        resources :comment
      end
    end
    namespace :member do
    end
  end
end
