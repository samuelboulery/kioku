Rails.application.routes.draw do
  devise_for :photographers, path: "photographers"
  devise_for :schools, path: "schools"

  namespace :professional do
    resources :schools, only: [:index, :show] do
      resources :classrooms, only: [:new, :create]
    end
    resources :classrooms, only: [:show, :edit, :update]
  end

  namespace :director do #root path perso (school/controller/action/show)
    resources :classrooms, only: :show do
      # resources :students, only: :index
      member do
        post :import
        get :associate
      end
    end
  end
  # resources :students, only: [:new, :create, :edit, :update]
  get "/consultation", to: "students#consultation" # >> consultation eleve
  # root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
