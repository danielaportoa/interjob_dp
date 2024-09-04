Rails.application.routes.draw do
  get 'applications/new'
  get 'applications/create'
  get 'job_offers/index'
  get 'job_offers/show'
  get 'job_offers/new'
  get 'job_offers/create'
  get 'job_offers/edit'
  get 'job_offers/update'
  get 'job_offers/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
