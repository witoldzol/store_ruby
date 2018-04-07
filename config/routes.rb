Rails.application.routes.draw do

  resources :profiles

  devise_for :users

  root 'items#index'
  
  get 'cart/index'
  
  get 'site/about' 

  get 'site/contact'

  get '/about' => 'site#about'

  get '/contact' => 'site#contact'

  get '/admin' => 'user#admin_login'

  get '/logout' => 'user#logout'
  get '/cart/:id' => 'cart#add'
  get '/cart' => 'cart#index'

  get '/cart/clear' => 'cart#clearCart'

  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  

  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
