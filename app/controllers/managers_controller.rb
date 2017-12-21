class ManagersController < ApplicationController
  before_action :find_manager, only: %i[show edit update destroy]
  before_action :find_workshop, only: %i[create]
  def new
    @manager = Manager.new
  end

  def create
    @manager = @workshop.create_manager(manager_params)

    if @manager.save
      redirect_to @manager
    else
      render :new      
    end
  end

  def update
    if @manager.update(manager_params)
      redirect_to @manager
    else
      render :edit
    end
  end

  def destroy
    @manager.destroy

    redirect_to root_path
  end

  private

  def find_manager
    @manager = Manager.find(params[:id])
  end

  def find_workshop
    @workshop = Workshop.find(params[:workshop_id])
  end

  def manager_params
    params.require(:manager).permit(:name, :age, :nation, :sex, :avatar,
                                      :salary, :work_rating)
  end
end