Rails.application.routes.draw do

  root 'posts_controller#list'

  get 'posts_controller/list' => 'posts_controller#list'

  get 'posts_controller/new' => 'posts_controller#new'

  post 'posts_controller/create' => 'posts_controller#create'

  get 'posts_controller/show/:id_s' => 'posts_controller#show'

  get 'posts_controller/edit/:id_e' => 'posts_controller#edit'

  post 'posts_controller/update/:id_u' => 'posts_controller#update'

  post 'posts_controller/destroy' => 'posts_controller#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
