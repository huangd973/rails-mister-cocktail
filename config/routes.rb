Rails.application.routes.draw do
  # get 'doses/new'

  # get 'doses/create'

  # get 'doses/destroy'

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  # get 'cocktails/create'

  resources :cocktails do
    resources :doses, only: [ :index, :new, :create, :show ]
  end
  resources :doses, only: [ :new, :create, :destroy ]

  # resources :cocktails
  # resources :doses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
