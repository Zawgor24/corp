# frozen_string_literal: true

class FromAppMailer < ApplicationMailer
  default from: 'zawgorodskiy.2012@gmail.com'

  def sample_email(user, password)
    @user = user
    @password = password
    mail(to: @user.email, subject: 'Sample Email')
  end
end
