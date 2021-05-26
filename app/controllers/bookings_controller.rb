class BookingsController < ApplicationController
  before_action :set_boat, only: [:index, :new, :create]


  def index
  end

  def new
    @booking =  Booking.new
  end

  def create
    @booking = Booking.new(list_params)
    @booking.boat = @boat
    if @booking.save
      redirect_to boat_bookings_path
    else
      render 'new'
    end
  end

  private

  def list_params
    params.require(:booking).permit(:start_date, :end_date, :boat_id, :user_id)
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

end
