class UserMailer < ApplicationMailer
	default from: 'info@startlp.com'
	def welcome_email(message)
		@message = message
		mail(to: 'service@startlp.com', subject: 'Сообщение с сайта STARTLP.COM')
	end
end
