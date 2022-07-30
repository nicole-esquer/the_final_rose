Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :contestants

  post "/contestants/:contestant_id/outings", to: "contestant_outings#create"
end
