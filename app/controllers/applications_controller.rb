class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def create
    @application = Application.new(params.require(:application))
    @application.save

    redirect_to @application
  end

  def new
    @application = Application.new
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy
    redirect_to applications_path
  end

end
