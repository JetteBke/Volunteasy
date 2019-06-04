class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation
    @user = params[:user] # Instance variable => available in view

    mail(
      to: "jette.bakemeier@gmail.com",
      subject: 'Your VOLUNTEASY job is confirmed!'
    )
    # This will render a view in `app/views/user_mailer`!
  end
end
