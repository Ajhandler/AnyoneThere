class RoomsController < ApplicationController
	before_action :authenticate_user!
	def index
		@rooms = Room.all
	end
	
	def show
		@room = Room.find(params[:id])
		@post = Post.new
	end
end