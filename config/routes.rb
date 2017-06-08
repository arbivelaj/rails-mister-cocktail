Rails.application.routes.draw do
  get 'doses/new'

  get 'doses/create'

  get 'doses/index'

  get 'doses/destroy'

  get 'cocktails/index'

  get 'cocktails/show'

  get 'cocktails/new'

  get 'cocktails/edit'

  get 'cocktails/create'

  get 'cocktails/update'

  get 'cocktails/destroy'

  resources :cocktails  do
    resources :doses, only: [:new, :show, :create]
  end
  resources :doses, only: [:destroy]

  root "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
