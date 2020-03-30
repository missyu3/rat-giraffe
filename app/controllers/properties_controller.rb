class PropertiesController < ApplicationController
  before_action :get_data,only:[:index]
  before_action :get_property_includes,only:[:show,:edit,:update]

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

  def edit
    @properties.stations.build
  end

  def update
    if @properties.update(get_params)
      redirect_to properties_path
    else
      render :edit
    end
  end

  def index
  end

  def show
  end

  private
  def get_data
    @properties = Property.all
  end
  
  def get_params
    params.require(:property).permit(:name, :rent, :address, :age, :remark,stations_attributes: [:name,:route,:walk_minutes, :_destroy, :id])
  end

  def get_property_includes
    @properties = Property.includes(:stations).find(params[:id])
  end

end
