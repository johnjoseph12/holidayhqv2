class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy, :flight_details, :hotel_details, :budget, :summary]

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to flight_details_trip_path(@trip)
    else
      render :new
    end
  end

  def flight_details
    @flight_detail = @trip.build_flight_detail
  end

  def hotel_details
    @hotel_detail = @trip.build_hotel_detail
  end

  def budget
    # for this demo, let's just render the view
  end

  def summary
    @flight_detail = @trip.flight_detail
    @hotel_detail = @trip.hotel_detail
  
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "trip_summary", template: "trips/summary.pdf.erb"
      end
    end
  end
  

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:destination, :start_date, :end_date, :total_people, :budget)
  end
end
