require 'test_helper'

class SendMailsControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get send_mails_send_url
    assert_response :success
  end

end
