class DetailsController < ApplicationController
  def index
    @details = Factory.find(params[:factory_id]).details.all
  end
end