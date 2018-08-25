class Category < ActiveRecord::Base
	dragonfly_accessor :image 
	has_many :products, dependent: :destroy
end
