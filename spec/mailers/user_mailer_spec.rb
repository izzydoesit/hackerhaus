require "spec_helper"

RSpec.describe UserMailer, type: :mailer do
  include Rails.application.routes.url_helpers

  before(:all) do 
    @user = create(:user, :agent)
    @email = UserMailer.confirmation_email(@user)
  end

  it 'should be sent to the user email' do 
    @email.should deliver_to(@user.email)
  end

  it 'should contain the activation link inside' do 
    pending('Uncomment after activation function works')
    # @email.should have_body_text(/#{activate_path(:code => @user.activation_code)}/)
  end
end
