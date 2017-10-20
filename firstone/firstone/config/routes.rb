Rails.application.routes.draw do
  # get 'battle/index'

  #resources :battle
  get 'battle/index'
  post 'battle/index'
  patch 'battle/update'
  put 'battle/update'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
