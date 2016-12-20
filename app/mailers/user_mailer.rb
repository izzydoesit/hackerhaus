class UserMailer < ApplicationMailer
  default from: "ericidle@example.com"

  def confirmation_email(user)
    @user = user
    mail(:to => user.email, :subject => "Please Activate Your Account")
  end
end
