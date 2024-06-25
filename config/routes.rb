Rails.application.routes.draw do
  resource :room, only: %i[show]
  resources :players, only: %i[create]
  resource :game, only: [] do
    post 'start'
    post 'play'
  end

  root 'rooms#show'
end
