Rails.application.routes.draw do
  #PAGES
  get 'auth/new', to: 'authentications#new'

  get 'user/new', to: 'users#new'
  get 'user/edit', to: 'users#edit'

  get 'user/:uni/home', to: 'users#home'

  get 'user/:uni/profile', to: 'users#profile'
  get 'user/:uni/profile/following', to: 'users#following'
  get 'user/:uni/profile/followers', to: 'users#followers'

  get 'user/:uni/event/new', to: 'events#new'

  get 'user/:uni/event/:id/info', to: 'events#info'
  get 'user/:uni/event/:id/edit', to: 'events#edit'
  get 'user/:uni/event/:id/chat', to: 'events#chat'

  #RESOURCES
  post 'auth', to: 'authentications#create'
  delete 'auth', to: 'authentications#destroy'

  post 'user', to: 'users#create'
  put 'user/:uni', to: 'users#update'
  delete 'user/:uni', to: 'users#destroy'

  get 'user/:uni/followers', to: 'followers#index'
  post 'user/:uni/followers', to: 'followers#create'
  delete 'user/:uni/followers/:follower_uni', to: 'followers#destroy'

  get 'user/:uni/event/:id/message', to: 'messages#index'
  post 'user/:uni/event/:id/message', to: 'messages#create'

  get 'user/:uni/event', to: 'events#index'
  post 'user/:uni/event', to: 'events#create'
  get 'user/:uni/event/:id', to: 'events#show'
  put 'user/:uni/event/:id', to: 'events#update'
  delete 'user/:uni/event/:id', to: 'events#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
