Rails.application.routes.draw do
  resources :books, only: %i[index] do
    collection do
      get :prime
    end
  end
  resources :articles, only: %i[index]
end
