BasicUser::Application.routes.draw do
  resources :users
  resources :logins
  root :to => 'users#index'
end
