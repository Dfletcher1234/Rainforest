Rails.application.routes.draw do
  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end

  root :to => 'products#index'



end
