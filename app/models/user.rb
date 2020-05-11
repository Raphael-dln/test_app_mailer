class User < ApplicationRecord
  after_create :welcome_send

  def new
    @user = User.new()
  end
  
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
