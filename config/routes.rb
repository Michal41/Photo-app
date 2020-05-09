Rails.application.routes.draw do
  resources :images
  devise_for :users
  root 'welcome#index' 
  get '/card/new' => 'billing#new_card', as: :add_payment_method
  post "/card" => "billing#create_card", as: :create_payment_method
 	get '/success' => 'billing#success', as: :success
  get '/cancel', to: 'billing#calncel_subscribe'
  post '/subscription' => 'billing#subscribe', as: :subscribe
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
