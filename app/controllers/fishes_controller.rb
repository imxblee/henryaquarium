class FishesController < ApplicationController
	before_action :verify_is_admin ,only:[ :new,:create]

	
	def index
		@fishes = Fish.all
	end
	def new
		@fish = Fish.new
	end
	def create
		Fish.create(fish_params)
		redirect_to root_path
	end
	private

	def fish_params
		params.require(:fish).permit(:name,:description,:prices,:species)
	end

	def verify_is_admin
	  (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
	end
end
