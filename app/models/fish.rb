class Fish < ActiveRecord::Base
	validates :name , presence: true
	validates :description , presence: true
	validates :species , presence: true
	acts_as_commontable
	 mount_uploader :image, ImageUploader
end
