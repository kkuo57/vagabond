class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def edit
    #sends 'edit city' form
  end

  def update
    @city = City.update(city_params)
  end

  def destroy
    @city = City.destroy(params[:id])
  end


  private

  def city_params
    params.require(:city).permit(:city_name, :country)
  end

end
