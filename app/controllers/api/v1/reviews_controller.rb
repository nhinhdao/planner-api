class Api::V1::ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
    if @review
      render :json => @review
    else
      render :json => {'error': @review.errors.full_messages}
    end
  end
  
  def destroy
    Review.destroy(params[:id])
  end
  
  private
  
  def review_params
    params.require(:review).permit(:user_name, :user_image, :text, :time_created, :rating)
  end
end
