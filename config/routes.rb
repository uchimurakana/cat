Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'
  resources :users, only: [:edit, :update] do
  end
  resources :homes, only: [:index, :show, :edit, :new ,:create] do
  
  end
  resources :admins,only:[:index] do
end
  resources :cats ,only:[:index, :show,:edit, :new ,:create] do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
