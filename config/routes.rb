Rails.application.routes.draw do
<<<<<<< HEAD
  

  devise_for :users#, :controllers => { :omniauth_callbacks => "callbacks" }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
=======
>>>>>>> 51fd3448e66c7187906451b264cc4f71892c942f

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'faq' => 'static_pages#faq'
  get 'tools' => 'static_pages#tools'
  get 'contacts' => 'static_pages#contacts'
<<<<<<< HEAD
  root 'static_pages#landing'

  resources :folders

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

 #   match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
 #   match 'auth/failure', to: redirect('/'), via: [:get, :post]
  #  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

#get 'auth/:provider', to: 'sessions#create'
#get 'auth/failure', to: redirect('/')
#get 'signout', to: 'sessions#destroy', as: 'signout'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
=======
  get 'about_us' => 'static_pages#about_us'
>>>>>>> 51fd3448e66c7187906451b264cc4f71892c942f

  resources :folders
  resources :users

  root 'static_pages#landing'
end
