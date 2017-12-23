# frozen_string_literal: true

class WorkerMailer < ApplicationMailer
  default from: 'zawgorodskiy.2012@gmail.com'

  def sample_email(email, password)
    @email = email
    @password = password
    mail(to: @email, subject: 'Sample Email')
  end
end
