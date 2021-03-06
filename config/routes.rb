Facere::Application.routes.draw do
  devise_for :users
  
  resources :lists do
    resources :tasks, :controller => 'lists/tasks', :only => [:create, :destroy]
  end
  
  resources :favorites, :only => [:index, :create, :destroy]
  resources :publics, :only => :index
  
  root :to => "lists#index"
end
