VisDir::Application.routes.draw do

  root :to => 'listings#index'
  
  resources :listings, :photographers
  
end