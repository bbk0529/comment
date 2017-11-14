Rails.application.routes.draw do

  root 'post#index'

  get 'user/signup'

  post 'user/signup_process'

  get 'user/login'

  post 'user/login_process'

  get 'user/logout'

  get 'user/show'

  get 'post/index'

  get 'post/new'

  post 'post/create'

  get 'post/show/:id' => 'post#show'

  post 'post/create_comment/:id' => 'post#create_comment' #variable routing




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
