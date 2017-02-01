Rails.application.routes.draw do

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout'}
  
  resources :courses, only: [:show, :new, :create] do
    member do
      resources :lessons, only: [:show, :new, :create]
    end
  end
  resources :schools
  root "schools#index"

end
