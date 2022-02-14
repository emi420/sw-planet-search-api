Rails.application.routes.draw do
  get 'planets', to: 'planets#index'

  # Defines the root path route ("/")
  root "planets#index"
end


