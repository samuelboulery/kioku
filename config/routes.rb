Rails.application.routes.draw do
  devise_for :photographers, path: "photographers"
  devise_for :schools, path: "schools"

  namespace :professional do
    resources :schools, only: [:index, :show] do
      resources :classrooms, only: [:new, :create]
    end
    post "schools/invite", to: "schools#invite"
    resources :classrooms, only: [:show, :edit, :update]
    authenticated :photographer do
      root :to => "schools#index"
    end
  end

  namespace :director do #root path perso (director/controller/action/show)
    resources :classrooms, only: :show do
      # resources :students, only: :index
      member do
        post :import
        get :associate
      end
    end
    authenticated :school do
      root :to => "schools#show"
    end
  end



  # resources :students, only: [:new, :create, :edit, :update]
  get "/consultation", to: "students#consultation" # >> consultation eleve

  root to: redirect("/photographers/sign_in")

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
