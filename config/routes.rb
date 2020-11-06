Rails.application.routes.draw do
  resources :sprint_chores
  resources :chores
  resources :users
  resources :houses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :sprints do
    member do
      post '/confirm' => 'sprints#confirm'
      post '/reject' => 'sprints#reject'
    end
  end
end
