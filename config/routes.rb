Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'scrapper#search'

  get '/search', to: 'scrapper#search'
  post '/result', to: 'scrapper#result'
end
