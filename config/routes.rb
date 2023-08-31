Rails.application.routes.draw do
  resources :comments
  resources :appointments
  resources :doctor_locations
  resources :doctors
  resources :locations
  resources :patients 

  #, only: [:show, :index]
  post "/signuppatient", to: "patients#create"
  post "/signupdoctor", to: "doctors#create"
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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
