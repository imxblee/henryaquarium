class Fish < ActiveRecord::Base
	validates :name , presence: true
	validates :description , presence: true
	validates :price , presence: true ,numericality: { only_integer: true }
	validates :species , presence: true
	acts_as_commontable
end
