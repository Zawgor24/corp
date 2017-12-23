# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  alias current_user current_worker

  protect_from_forgery with: :exception

  before_action :authenticate_worker!

  rescue_from Pundit::NotAuthorizedError do
    redirect_to root_path, notice: 'You do not have access to this page'
  end
end
