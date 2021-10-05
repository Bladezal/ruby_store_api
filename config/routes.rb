Rails.application.routes.draw do
  resources :books, :categories, :companies, :games, :platforms
end
