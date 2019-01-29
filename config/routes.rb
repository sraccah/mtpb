Rails.application.routes.draw do
  # want my root / to be my home page
  root 'pages#home'
  # adding resources for my models (cmd: rake routes => check all routes)
  resources :days
  resources :trip_plans, :path => '/trip-plans'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
