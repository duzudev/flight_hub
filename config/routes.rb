Rails.application.routes.draw do
  root 'dashboard#index'

  get 'dashboard', to: 'dashboard#index'
  get 'projects', to: 'projects#index'
  get 'lms', to: 'lms#index'
  get 'compliance', to: 'compliance#index'
  get 'inventory', to: 'inventory#index'
  get 'maintenance', to: 'maintenance#index'
  get 'crew', to: 'crew#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end