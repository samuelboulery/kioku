Rails.application.routes.draw do
  devise_for :photographers, path: "photographers"
  devise_for :schools, path: "schools"

  namespace :photographers do
    resources :schools, only: :index do
      resources :classrooms, only: :index
    end
    resources :classrooms, only: [:new, :create, :edit, :update]
  end

  namespace :schools do
    resources :classrooms, only: :index do
      resources :students, only: :index
    end
    resources :students, only: [:new, :create, :edit, :update]
  end
  # root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
