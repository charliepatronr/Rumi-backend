Rails.application.routes.draw do
  resources :sprint_chores
  resources :sprints
  resources :chores
  resources :users
  resources :houses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
