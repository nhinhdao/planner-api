class Api::V1::TimetablesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    render :json => @user.timetables
    # render :json => @timetables, include: ['owner', 'tasks', 'tasks.user']
  end
  
  def create
    @timetable = Timetable.find_or_create_by(name: timetable_params)
    if @timetable
      render :json => @timetable
    else
      render :json => {'error': @timetable.errors.full_messages}
    end
  end
  
  def update
    @timetable = Timetable.find(params["id"])
    if @timetable.update_attributes(timetable_params)
      render :json => @timetable
    else
      render :json => {'error': @timetable.errors.full_messages} 
    end
  end
  
  def show
    render :json => Timetable.find(params[:id])
  end
  
  def destroy
    @timetable = Timetable.find(params[:id])
    @timetable.destroy
    render :json => @timetable
  end
  
  private
  
  def timetable_params
    params.permit(:name)
  end

end
