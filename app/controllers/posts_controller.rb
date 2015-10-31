class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
  #   @posts = Post.paginate
	end

	def new 
		@post = Post.new
	end 

	def create 
		@post = current_user.posts.create(post_params)
		if @post.save
			redirect_to user_posts_path(current_user), flash: {success: "Created"}
		else 
			render :new
		end 
	end 

	def show
	end 

	def edit
	end 

	def update
	end 

  def destroy
  	@post.destroy 
  	redirect_to user_path(current_user), alert: "deleted"
  end 

	private

  def post_params
      params.require(:post).permit(:title, :content)
  end

  def find_post
  	@post = Post.find params[:id]
  end 

end #end PostsController