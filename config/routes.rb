Rails.application.routes.draw do

  resources :blogs
  resources :tweets
  root 'post#index'


  post 'user/signup_process'
  post 'user/login_process'
  get 'user/login'
  get 'user/signup'
  get 'user/logout'
  get 'user/show'
  get 'user/note'

  get 'post/index'
  get 'post/new'
  post 'post/create'
  get 'post/show/:id' => 'post#show'
  post 'post/create_comment/:id' => 'post#create_comment' #variable routing
  get 'post/edit/:id' => 'post#edit'
  get 'post/destroy/:id' => 'post#destroy'
  post 'post/modify/:id' => 'post#modify'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
