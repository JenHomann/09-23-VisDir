VisDir::Application.routes.draw do

  root :to => 'listings#index'
  
  resources :listings, :photographers
  
  match "/delayed_job" => DelayedJobWeb, :anchor => false, via: [:get, :post]
  
end