class SendMailsController < ApplicationController


  def index
    # http://localhost:3000/send_mails/send?mail=aagunts@gmail.com
    mailaccount = params['mail']

    @maildata = AlermInfo.find_by(kaisha_mail: mailaccount)
    PostMailer.post_email(@maildata).deliver

  end

end
