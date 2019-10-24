Rails.application.routes.draw do
  devise_for :users
  resources :tasks

  root 'tasks#index'
  get 'tasks/done/:id', to: 'tasks#done', as: 'done_task'
  delete 'tasks/image_delete/:id', to: 'tasks#image_delete', as: 'image_delete'
end
