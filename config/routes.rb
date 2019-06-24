Rails.application.routes.draw do
  resources :photos
  # resources :rovers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/photos', to: 'photos#create'
end
