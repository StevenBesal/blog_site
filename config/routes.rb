Rails.application.routes.draw do
  get 'cars/new'
  get 'cars/edit'
  get 'cars/id'
  get '/about', to: 'misc#about', as: 'about'
  get '/contact', to: 'misc#contact', as: 'contact'
  get '/FAQ', to: 'misc#FAQ', as: 'faq'
  get '/terms', to: 'misc#terms', as: 'terms'
  get '/Index', to: 'misc#Index', as: 'index2'
  resources :posts do
    resources :comments
  end
  resources :cars


  #
  # get 'posts/', to: 'posts#index', as: 'home'
  # get 'post/new', to: 'posts#new', as: 'new'
  # get 'posts/:id', to: 'posts#show', as: 'show'
  # get 'posts/:id/edit', to: 'posts#edit', as: 'edit'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'
end
