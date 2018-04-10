Rails.application.routes.draw do

  get '/tickets/:id', to: 'tickets#show'

  post '/tickets', to: 'tickets#create'

  delete '/tickets/:id', to: 'tickets#destroy'

  put '/tickets/:id', to: 'tickets#update'

  get '/places/:id', to: 'places#show'

  post '/places', to: 'places#create'

  delete '/places/:id', to: 'places#destroy'

  put '/places/:id', to: 'places#update'

  get '/events/:id', to: 'events#show'

  post '/events', to: 'events#create'

  delete '/events/:id', to: 'events#destroy'

  put '/events/:id', to: 'events#update'

  get '/users/:id', to: 'users#show'

  post '/users', to: 'users#create'

  delete '/users/:id', to: 'users#destroy'

  put '/users/:id', to: 'users#update'

  get '/users/:user_id/user_tickets/:id', to: 'user_tickets#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
