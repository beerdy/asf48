class ApplicationController < ActionController::Base
	before_action :authorize, only: [:create, :update, :destroy]
	protect_from_forgery with: :exception

	def initialize
		super
		@user = User.new
	end

	protected
		def authorize
			puts "Сессия: #{session}"
			unless Panel.find_by(id: session[:user_id])
			redirect_to login_url, notice: "Пожалуйста, пройдите авторизацию"
		end
	end
end