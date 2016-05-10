Rails.application.routes.draw do

  resources :users, only: [:show, :index]
  resources :characters, only: [:show, :index] do
    resources :defenses, only: [:show, :index]
    resources :char_attributes, only: [:show, :index]
    resources :active_skills, only: [:show, :index]
    resources :skill_specialties, only: [:show, :index]
  end
  resources :base_skills, only: [:show, :index]
  resources :base_attributes, only: [:show, :index]

end
