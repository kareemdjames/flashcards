Rails.application.routes.draw do
  resources :tags do
    #nest flashcards route on tags
    get :flashcards, on: :member
  end

  resources :flashcards do
    #nest tags route on flashcards
    get :tags, on: :member
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
