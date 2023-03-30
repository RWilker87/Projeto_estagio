Rails.application.routes.draw do
  devise_for :users
  resources :musicas
  resources :usuarios do
    resources :playlists, only: [:new, :create, :show, :index]
  end


  get '/usuarios/:id', to: 'usuarios#show', as: 'usuario'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
