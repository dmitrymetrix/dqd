Rails.application.routes.draw do

  root 'pages#home'

  get 'mentor' => 'mentor#index'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :testimonials, only: [:index, :new, :show, :create, :destroy]
  resources :courses, only: [:index, :show]

  resources :students
end
