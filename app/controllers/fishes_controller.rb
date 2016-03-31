class FishesController < ApplicationController
	before_action :verify_is_admin ,only:[ :new,:create,:edit]

	
	def index
		@fishes = Fish.all
	end
	def new
		@fish = Fish.new
	end
	def create
		@fish = Fish.create(fish_params)
		if @fish.valid?
			redirect_to root_path
		  else
		    render :new, status: :unprocessable_entity
		end
	end

	def show
		@fish = Fish.find(params[:id])
		
	end
	def edit
		@fish = Fish.find(params[:id])
	end
	def update
		@fish = Fish.find(params[:id])
		@fish.update_attributes(fish_params)
		if @fish.valid?
			redirect_to root_path
		  else
		    render :new, status: :unprocessable_entity
		end
		
	end

	def destroy
		@fish = Fish.find(params[:id])
		@fish.destroy
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
