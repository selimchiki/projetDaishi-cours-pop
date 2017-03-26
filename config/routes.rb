Rails.application.routes.draw do
  resources :levels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "tasks#index"

  resources :tasks

  put 'complete_task', to: 'tasks#complete', as: :complete_tasks

end
