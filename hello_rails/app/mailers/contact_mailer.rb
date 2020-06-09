class ContactMailer < ApplicationMailer
	def say_hello_to(user)
		@user = user
		mail to:@user.email, subject: "hello!"
	end
end
