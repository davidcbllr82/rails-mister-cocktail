Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/destroy'
  get 'reviews/create'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :new]
    resources :reviews, only: [:create]
  end

  resources :doses, only: [:destroy]
end
