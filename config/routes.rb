Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/create'
  get 'applicants/new'
  post 'applicants/create'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => "applicants#new"

end
