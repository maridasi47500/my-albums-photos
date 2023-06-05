Rails.application.routes.draw do
  resources :sentences do
    collection do
      post "addsentence"
    end
  end
  resources :mymapstuffs do
    member do
      post "autrenom"
      post "supprimer"
    end
  end
  resources :mypics do
    member do
      post "add"
      get "editstuff"
    end
  end
  root 'mypics#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
