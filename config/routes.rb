Rails.application.routes.draw do
  get 'about', to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact'

  resources :posts do
  resources :comments  
 end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end

