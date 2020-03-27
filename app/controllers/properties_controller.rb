class PropertiesController < ApplicationController
before_action :get_data,only:[:index]

  def new
    @properties = Property.new
    2.times {@properties.stations.build}
  end

  def create
    @properties = Property.new(get_params)
    if @properties.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def index
  end

  def edit
  end

  private
  def get_params
    params.require(:property).permit(:name, :rent, :address, :age, :remark,stations_attributes: [:name,:route,:walk_minutes])
  end

  def get_data
    @properties = Property.all
    @properties.all.includes(:stations)
  end
end
