Rails.application.routes.draw do

  root 'items#index'
  
  get 'cart/index'
  
  get 'site/about' 

  get 'site/contact'

  get '/about' => 'site#about'

  get '/contact' => 'site#contact'

  devise_for :users
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
