Rails.application.routes.draw do
  # root "shorten_urls#new", as: "index"


  resources :shorten_urls
end
