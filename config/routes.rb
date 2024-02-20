Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  # As a user, I can list tasks
  # As a user, I can view the details of a task
  # As a user, I can add a new task
  # As a user, I can edit a task (mark as completed / update title & details)
  # As a user, I can remove a task

  # resources :tasks
  get "/", to: "tasks#index", as: :tasks
  get "/task/:id", to: "tasks#show", as: :task
  get "/new", to: "tasks#new"
  post "/", to: "tasks#create"
end
