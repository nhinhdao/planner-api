class Api::V1::PlacesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    render :json => @user.places
  end
  
  def create
    @place = Place.create(place_params)
    if @place
      render :json => @place
    else
      render :json => {'error': @place.errors.full_messages}
    end
  end
  
  def update
    @place = Place.find(params["id"])
    if @place.update_attributes(place_params)
      render :json => @place
    else
      render :json => {'error': @place.errors.full_messages} 
    end
  end
  
  def show
    if @place = Place.find(params[:id])
      render :json => @place
    else 
      render :json => {"errors": "We couldn't find your request"}
    end
  end
  
  def destroy
    Place.destroy(params[:id])
  end
  
  private
  
  def place_params
    params.require(:place).permit(:time, :timetable_id)
  end
end
