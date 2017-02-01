Rails.application.routes.draw do

  resources :courses, only: [:show, :new, :create] do
    member do
      resources :lessons, only: [:show, :new, :create]
    end
  end
  resources :schools
  root "schools#index"

end
