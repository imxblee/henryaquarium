class FishesController < ApplicationController
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
end
