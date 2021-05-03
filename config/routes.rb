Rails.application.routes.draw do
  
  resources :contacts
  resources :users, only: [:new, :create, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#index"


  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'

  
end
