class ServicesController < ApplicationController
  def index
    @services ||= Service.all
    @service_categories ||= Category.all
  end

  def show
    @service = Service.find_by_slug!(params[:service])
    @service_categories ||= Category.all

    respond_to do |format|
      format.html { render 'services/show' } # show.html.erb
      format.json { render json: @service }
    end
  end
end
