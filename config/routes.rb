Rails.application.routes.draw do
  get 'users/edit'
  resources :users, only: [:new, :create, :edit, :update]
end
