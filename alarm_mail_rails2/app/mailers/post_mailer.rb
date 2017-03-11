class PostMailer < ApplicationMailer

  def post_email(alerm_info)
    @text = alerm_info.iiwake
    @name = alerm_info.user_name
    mail to: alerm_info.kaisha_mail, subject: "本日午前休します"
  end
end
