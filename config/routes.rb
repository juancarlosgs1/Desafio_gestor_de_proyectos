Rails.application.routes.draw do
  get 'proyects/index'
  root 'proyects#index'
  post 'proyects', to: 'proyects#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
