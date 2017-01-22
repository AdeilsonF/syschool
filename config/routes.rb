Rails.application.routes.draw do

  resources :courses
  resources :schools
  root "schools#index"

  resources :schools do
  end
end
