Rails.application.routes.draw do
  resources :articles, only: %i[index]
  resources :books, only: %i[index] do
    collection do
      get :prime
    end
  end
  get '/search/filter'
end
