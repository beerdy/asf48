class WelcomeController < ApplicationController
	def initialize
		super
		@user = User.new
		@baners = Baner.all
	end
end
