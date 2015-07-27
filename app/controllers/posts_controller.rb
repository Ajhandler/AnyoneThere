class PostsController < ApplicationController 
	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id 
		@post.save
		redirect_to @post.room
	end

	private
	def post_params
		params.require(:post).permit( :body,:user_id,:room_id)
	end
end