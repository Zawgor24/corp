class PrincipalsController < ApplicationController
  before_action :find_principal, only: %i[show edit update]
  
  def update
    if @principal.update(principal_params)
      redirect_to @principal
    else
      render :edit
    end
  end

  private

  def find_principal
    @principal = Principal.find(params[:id])
  end

  def principal_params
    params.require(:principal).permit(:name, :age, :nation, :sex, :avatar,
                                      :salary, :work_rating)
  end
end