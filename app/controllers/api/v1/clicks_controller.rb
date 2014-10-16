class Api::V1::ClicksController < Api::V1::ApplicationController
  def create
    @application = Application.find(params[:application_id])
    @click = @application.clicks.new(click_params)
    if @click.save
      head 200
    else
      head 500
    end
  end

private

  def click_params
    params.require(:click).permit(:element_name, :id_name, :class_name)
  end
end
