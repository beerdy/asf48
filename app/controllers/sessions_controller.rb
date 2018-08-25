class SessionsController < ApplicationController
	skip_before_action :authorize
	def new
	end

	def create
		panel = Panel.find_by(name: params[:name])

		if panel and panel.authenticate(params[:password])
			puts "----->>>> #{session[:user_id]}"
			session[:user_id] = panel.id
			redirect_to admin_url
		else
			redirect_to login_url, alert: "Неверная комбинация имени и пароля"
		end
	end

	def destroy
		session = nil
		redirect_to admin_url, notice: "Сеанс работы завершен"		
	end
end
