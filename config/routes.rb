Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # As a user, I can edit a task (mark as completed / update title & details)
  # As a user, I can remove a task

  # Read all
  get "/tasks", to: "tasks#index"

  # # Create
  get "/tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"

  # Update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Read one
  get "tasks/:id", to: "tasks#show", as: :task


  # Delete
  # delete "tasks/:id", to: "tasks#destroy"



end
