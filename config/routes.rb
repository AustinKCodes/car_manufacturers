Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "/", to: "welcome#index"

  get "/manufacturers", to: "manufacturers#index"
  get "/manufacturers/:id", to: "manufacturers#show"
  get "/cars", to: "cars#index"
  get "/cars/:id", to: "cars#show"
  get "/cars/new", to: "cars#new"
  post "/cars", to: "cars#create"
end