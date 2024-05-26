Rails.application.routes.draw do
  root 'searches#welcome'
  post '/search', to: 'searches#search'
  get '/dashboard', to: 'searches#dashboard'
  get '/trends', to: 'searches#trends'
  get '/reset', to: 'searches#reset'
  post '/reset', to: 'searches#perform_reset'
end
