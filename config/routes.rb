Rails.application.routes.draw do
  resources :users, constraints: { format: 'json' }

  resources :movies, constraints: { format: 'json' }, only: [:index, :show]
end
