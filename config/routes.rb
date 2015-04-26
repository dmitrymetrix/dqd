Rails.application.routes.draw do

  root 'pages#home'

  get 'course' => 'pages#course'

  get 'mentor' => 'mentor#index'

  resources :testimonials, only: [:index, :new, :show, :create, :destroy]

  resources :students

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end
