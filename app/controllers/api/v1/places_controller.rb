class Api::V1::PlacesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    render :json => @user.places
  end
  
  def create
    # binding.pry
    @place = Place.find_or_create_by(code: params[:place][:code])
    @place.update_attributes(place_params_create)
    if @place.valid?
      review_params.each{|review| @place.reviews.create(review)}
      render :json => @place
    else
      render :json => {'error': @place.errors.full_messages}
    end
  end
  
  def update
    @place = Place.find(params["id"])
    # binding.pry
    if @place.update_attributes(place_params_update)
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
    @place = Place.find(params[:id])
    @place.destroy
    render :json => @place
  end
  
  private

  def place_params_create
    params.require(:place).permit(:name, :category, :contact, :location, :rating, :user_id, :timetable_id, :time, :isAddedToList, photos: [])
  end
  
  def place_params_update
    params.require(:place).permit(:time, :timetable_id)
  end

  def review_params
    params.permit(reviews: [:user_name, :user_image, :text, :time_created, :rating]).to_h['reviews']
  end
end
