Rails.application.routes.draw do
  root to: "posts#index"
  
  # To do, change 'get' to 'delete'
  # changed DELETE to GET bc the following makes a GET request <li><%= link_to 'Sign Out', sign_out_path, method: :delete %></li> 
  get '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
  resources :user_sessions, only: [:create, :destroy]
  resources :users do 
  	resources :posts, shallow: true
  end 

  # get '/users/edit', to:  'users#edit'
	# get '/users/show', to:  'users#show'

end #end Rails.application.routes


#     			 Prefix Verb   URI Pattern                         Controller#Action
#      user_session POST   /user_session(.:format)             user_sessions#create
#  new_user_session GET    /user_session/new(.:format)         user_sessions#new
# edit_user_session GET    /user_session/edit(.:format)        user_sessions#edit
#                   GET    /user_session(.:format)             user_sessions#show
#                   PATCH  /user_session(.:format)             user_sessions#update
#                   PUT    /user_session(.:format)             user_sessions#update
#                   DELETE /user_session(.:format)             user_sessions#destroy
#              root GET    /                                   posts#index
#        user_posts GET    /users/:user_id/posts(.:format)     posts#index
#                   POST   /users/:user_id/posts(.:format)     posts#create
#     new_user_post GET    /users/:user_id/posts/new(.:format) posts#new
#         edit_post GET    /posts/:id/edit(.:format)           posts#edit
#              post GET    /posts/:id(.:format)                posts#show
#                   PATCH  /posts/:id(.:format)                posts#update
#                   PUT    /posts/:id(.:format)                posts#update
#                   DELETE /posts/:id(.:format)                posts#destroy
#             users GET    /users(.:format)                    users#index
#                   POST   /users(.:format)                    users#create
#          new_user GET    /users/new(.:format)                users#new
#         edit_user GET    /users/:id/edit(.:format)           users#edit
#              user GET    /users/:id(.:format)                users#show
#                   PATCH  /users/:id(.:format)                users#update
#                   PUT    /users/:id(.:format)                users#update
#                   DELETE /users/:id(.:format)                users#destroy
#        users_edit GET    /users/edit(.:format)               users#edit
#        users_show GET    /users/show(.:format)               users#show