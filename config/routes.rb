Rails.application.routes.draw do
  namespace :users_backoffice do
      get 'welcome/index'
  end
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
  end
  namespace :profiles_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
     get 'welcome/index' # Dashboard
     resources :admins # Administradores
     resources :subjects # Assuntos/Áreas
     resources :questions # Perguntas
  end

  devise_for :admins
  devise_for :users

  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
