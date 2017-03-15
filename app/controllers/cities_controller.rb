class CitiesController < ApplicationController

  # Index of All Cities
  def index
    @cities = City.all
  end

  # Show One City Page
  def show
    @city = City.find(params[:id])
  end

  # 'Edit' City
  def edit
    #sends 'edit city' form
  end

  # Updates Information About A City
  def update
    @city = City.update(city_params)
  end

  # Deletes a City
  def destroy
    @city = City.destroy(params[:id])
  end


  private

  # Defines parameters for 'City'
  def city_params
    params.require(:city).permit(:city_name, :country)
  end

end
