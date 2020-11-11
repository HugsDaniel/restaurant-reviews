Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "flats#index"

  resources :restaurants
  # resources :flats, only: [:new, :create, :index, :show]

  # get "/", to: ""

  # 7 ACTIONS
  # READ
  # - index
  # VERBE URL       CONTROLLER#ACTION
  # get "/flats", to: "flats#index"
  # - show

  # CREATE
  # - new     => afficher le formulaire
  # get "/flats/new", to: "flats#new", as: :new_flat
  # - create  => envoyer les infos au serveur pour enregistrer la nouvelle ressource
  # post "/flats", to: "flats#create"

  # get "/flat/:id", to: "flats#show", as: :flat



  # UPDATE
  # - edit    => afficher le formulaire
  # - update  => envoyer les infos au serveur pour updater la ressource

  # DELETE
  # - destroy
end
