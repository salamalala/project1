Rails.application.routes.draw do

  post "/courses/:id/book", to: "courses#book", as: :book_course

  get "/enrollments/mine_booked", to: "enrollments#mine_booked", as: :mine_booked

  resources :teachers

  resources :students

  resources :enrollments

  resources :bookings

  resources :campuses

  resources :coursetypes

  resources :classrooms

  resources :courses do
      collection do
        get :past, to: 'courses#past_courses'
        get :current, to: 'courses#current_courses'
        get :future, to: 'courses#future_courses'
      end
    end

  devise_for :users

  resources :users, only: [:index, :show] do
    member do
      post "make_teacher", to: "users#make_teacher"
      post "make_not_teacher", to: "users#make_not_teacher"
    end
  end
  get "/my_profile", to: "users#show", as: :my_profile

  devise_scope :user do
    authenticated :user do
      root to: "courses#index", as: :authenticated_root
    end

    unauthenticated do
      root to: "devise/sessions#new", as: :unauthenticated_root
    end
  end

  
end
