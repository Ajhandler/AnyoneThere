class RoomsController < ApplicationController
	def index
		@rooms = Room.all
	end
	def show
		@room = Room.find(params[:id])
		@post = Post.new
	end
end