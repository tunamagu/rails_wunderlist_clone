Rails.application.routes.draw do
  devise_for :users
  resources :tasks

  root 'tasks#index'
  get 'tasks/done/:id', to: 'tasks#done', as: 'done_task'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
