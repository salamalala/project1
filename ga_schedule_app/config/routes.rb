Rails.application.routes.draw do

  post "/courses/:id/book", to: "courses#book", as: :book_course

  get "/courses/mine_booked", to: "courses#mine_booked", as: :mine_booked

  resources :teachers

  resources :students

  resources :enrollments

  resources :bookings

  resources :campuses

  resources :coursetypes

  resources :classrooms

  resources :courses

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
