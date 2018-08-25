class Product < ActiveRecord::Base
	dragonfly_accessor :image 
	belongs_to :category
end
