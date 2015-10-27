Rails.application.routes.draw do

  root to: "posts#index"

  resources :users do 
  	resources :posts, shallow: true
  end 

  get '/users/edit', to:  'users#edit'
  get '/users/show', to:  'users#show'

end


#    Prefix Verb   URI Pattern                         Controller#Action
#          root GET    /                                   posts#index
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