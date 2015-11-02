Rails.application.routes.draw do

  # keep routes in this order so that angular doesn't interfere 
  root to: "posts#index"
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out

  # get '*path' => 'static_pages#index'

  
  

  resources :user_sessions, only: [:create, :destroy]
  resources :users do 
  	resources :posts, shallow: true
  end 

  # These two routes make the tests pass
  # get '/users/edit', to:  'users#edit'
	# get '/users/show', to:  'users#show'

end #end Rails.application.routes



#   Prefix Verb   URI Pattern                         Controller#Action
#          root GET    /                                   posts#index
#      sign_out DELETE /sign_out(.:format)                 user_sessions#destroy
#       sign_in GET    /sign_in(.:format)                  user_sessions#new
# user_sessions POST   /user_sessions(.:format)            user_sessions#create
#  user_session DELETE /user_sessions/:id(.:format)        user_sessions#destroy
#    user_posts GET    /users/:user_id/posts(.:format)     posts#index
#               POST   /users/:user_id/posts(.:format)     posts#create
# new_user_post GET    /users/:user_id/posts/new(.:format) posts#new
#     edit_post GET    /posts/:id/edit(.:format)           posts#edit
#          post GET    /posts/:id(.:format)                posts#show
#               PATCH  /posts/:id(.:format)                posts#update
#               PUT    /posts/:id(.:format)                posts#update
#               DELETE /posts/:id(.:format)                posts#destroy
#         users GET    /users(.:format)                    users#index
#               POST   /users(.:format)                    users#create
#      new_user GET    /users/new(.:format)                users#new
#     edit_user GET    /users/:id/edit(.:format)           users#edit
#          user GET    /users/:id(.:format)                users#show
#               PATCH  /users/:id(.:format)                users#update
#               PUT    /users/:id(.:format)                users#update
#               DELETE /users/:id(.:format)                users#destroy