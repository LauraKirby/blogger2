class PostsController < ApplicationController

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
		@posts = current_user.posts.all
	end 

	def edit
	end 

	def update
	end 

  def destroy
  end 

	private

  def post_params
      params.require(:post).permit(:title, :content)
  end

end #end PostsController