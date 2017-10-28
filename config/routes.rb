Rails.application.routes.draw do
  resources :books, only: %i[index]
  resources :articles, only: %i[index]
end
