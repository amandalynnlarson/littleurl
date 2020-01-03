Rails.application.routes.draw do
  resources :shorten_urls do
    get 'shorten_urls' => 'shorten_urls#new'
  end
end
