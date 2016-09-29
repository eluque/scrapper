Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'scrapper#index'

  resources :scrapper, except: :index
  get '/scraper/parts/:id', to: 'scrapper#parts', as: 'scraper_parts'

  post '/search', to: 'scrapper#search'
  # post '/result', to: 'scrapper#result'
end
