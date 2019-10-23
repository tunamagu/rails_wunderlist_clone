Rails.application.routes.draw do
  devise_for :users
  resources :tasks

  root 'tasks#index'
  get 'tasks/done/:id', to: 'tasks#done', as: 'done_task'
end
