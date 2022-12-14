Rails.application.routes.draw do
  #PAGES
  get '/', to: 'authentications#entry'

  get 'auth/new', to: 'authentications#new', as: 'login'

  get 'user/new', to: 'users#new', as: 'new_user'
  get 'user/edit', to: 'users#edit'

  get 'user/:uni/home', to: 'users#home', as: 'home'

  get 'user/:uni/profile', to: 'users#profile', as: 'profile'
  get 'user/:uni/profile/following', to: 'users#following', as: 'profile_following'
  get 'user/:uni/profile/followers', to: 'users#followers', as: 'profile_followers'

  get 'user/:uni/event/new', to: 'events#new', as: 'new_event'

  get 'user/:uni/event/:id/info', to: 'events#info', as: 'event'
  get 'user/:uni/event/:id/edit', to: 'events#edit'
  get 'user/:uni/event/:id/chat', to: 'events#chat', as: 'chat'

  #RESOURCES
  resources :events
  resources :messages
  post 'auth', to: 'authentications#create', as: 'create_auth'
  delete 'auth', to: 'authentications#destroy', as: 'delete_auth'

  post 'user', to: 'users#create', as: 'create_user'
  put 'user/:uni', to: 'users#update', as: 'update_user'
  delete 'user/:uni', to: 'users#destroy', as: 'delete_user'

  get 'user/:uni/followers', to: 'followers#index'
  put 'user/:uni/followers/:follower_uni', to: 'followers#create', as: 'create_follower'
  delete 'user/:uni/followers/:follower_uni', to: 'followers#destroy', as: 'delete_follower'

  get 'user/:uni/event/:id/message', to: 'messages#index'
  post 'user/:uni/event/:id/message', to: 'messages#create'

  get 'user/:uni/event', to: 'events#index'
  post 'user/:uni/event', to: 'events#create'
  get 'user/:uni/event/:id', to: 'events#show'
  put 'user/:uni/event/:id', to: 'events#update'
  delete 'user/:uni/event/:id', to: 'events#destroy'

  post 'user/:uni/event/:id/registration', to: 'registrations#create'
  delete 'user/:uni/event/:id/registration', to: 'registrations#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
