class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :find_author, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
  	# @posts = Post.paginate
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
		#see before actions
	end 

	def edit
		@author = User.find(@post.user_id)
		if current_user.id == @author.id 
			render :edit
		else 
			redirect_to root_path
			flash[:success] = "You must be the author to edit a post"
		end 
	end 

	def update
		@post.update post_params
		if @post.save 
			redirect_to root_path
		end 
	end 

  def destroy
  	@post.destroy 
  	redirect_to root_path, alert: "deleted"
  end 

	private

  def post_params
      params.require(:post).permit(:title, :content, :published)
  end

  def find_post
  	@post = Post.find params[:id]
  end 

  def find_author
  	@author = User.find(@post.user_id)
  end 

end #end PostsController