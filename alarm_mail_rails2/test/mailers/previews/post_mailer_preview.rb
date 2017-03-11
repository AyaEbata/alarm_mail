# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview

  def account_activation
    @maildata = AlermInfo.first
    PostMailer.post_email(@maildata).deliver

  end

end
