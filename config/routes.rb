Rails.application.routes.draw do
  resources :comments
  resources :appointments
  resources :doctor_locations
  resources :doctors
  resources :locations
  resources :patients 
  resources :users
  resources :departments
  resources :cities
  resources :countries, only: [:show, :index]

  #, only: [:show, :index]
  post "/signuppatient", to: "patients#create"
  post "/signupdoctor", to: "doctors#create"
  post "/signup", to: "users#create"
  get "/c&c/me", to: "users#show"
  get "/me", to: "patients#show"
  get "/doc", to: "doctors#sessionshow"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :locations do
    resources :doctors, only: [:show, :index]
  end

  resources :doctors do
    resources :locations, only: [:show, :index]
    resources :patients, only: [:show, :index]
    resources :appointments, only: [:show, :index]
  end

  resources :patients do
    resources :doctors, only: [:show, :index]
    resources :appointments, only: [:show, :index]
  end

  resources :employees do
    resources :projects, only: [:show, :index]
  end

  resources :projects do
    resources :employees, only: [:show, :index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
