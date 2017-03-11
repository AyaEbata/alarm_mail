class TopController < ApplicationController
  def index
    mailaccount = params['mail']
    @alertInfo = AlermInfo.find_by(kaisha_mail: mailaccount)
    @alertInfo2 = AlermInfo.new
    @alertInfo2.alerm_time ='18:00'

    if @alertInfo == nil
      @alertInfo = @alertInfo2
    end

  end
end
