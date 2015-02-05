Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users
  get 'faq' => 'static_pages#faq'
  get 'tools' => 'static_pages#tools'
  get 'contacts' => 'static_pages#contacts'
  get 'about_us' => 'static_pages#about_us'

  root 'static_pages#landing'
end
