Facere::Application.routes.draw do
  devise_for :users
  
  resources :lists do
    resources :tasks, :controller => 'lists/tasks'
  end
  
  resources :favorites, :only => [:index, :create, :destroy]
  resources :publics, :only => :index
  
  root :to => "home#index"
end
