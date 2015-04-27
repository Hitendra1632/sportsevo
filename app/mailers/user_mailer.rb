class UserMailer < ApplicationMailer
	def feedback_us(message) 
		@data=message
		mail(:to => "hitendra1632@gmail.com", :subject => "feedback")
	end
end
