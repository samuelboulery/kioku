Rails.application.routes.draw do
  devise_for :photographers, path: "photographers", skip: :sessions

  as :photographer do
    get '/', to: 'devise/sessions#new', as: :new_photographer_session
    post 'signin_photographer', to: 'devise/sessions#create', as: :photographer_session
    delete 'signout_photographer', to: 'devise/sessions#destroy'
  end

  devise_for :schools, path: "schools", skip: :sessions

  as :school do
    get '/', to: 'devise/sessions#new', as: :new_school_session
    post 'signin_school', to: 'devise/sessions#create', as: :school_session
    delete 'signout_school', to: 'devise/sessions#destroy'
  end


  namespace :professional do
    resources :schools, only: [:index, :show, :update] do
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
      end
    end
    post "/update", to: "schools#update"
    resources :students, only: :update
    authenticated :school do
      root :to => "schools#show"
    end

  end
  get '/login' => 'pages#login'



  # resources :students, only: [:new, :create, :edit, :update]
  get "/consultation", to: "students#consultation" # >> consultation eleve


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
