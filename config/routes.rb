Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  scope '/admin'
    resources :stats, only: [:index]

  root 'posts#index'
end
