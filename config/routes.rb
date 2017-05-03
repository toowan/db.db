Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  resources :contacts, only: :create
  get 'about', to: 'contacts#new', as: 'new_contact'


  resources :profiles

  get 'breeders', to: 'profiles#index', as: 'breeders'

end
