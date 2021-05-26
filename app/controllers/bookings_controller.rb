class BookingsController < ApplicationController
  before_action :set_boat, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(paramas[:id])
  end

  def new
    @booking =  Booking.new
  end

  def create
    @booking = Booking.new(list_params)
    @booking.boat = @boat
    @booking.user = current_user
    if @booking.save
      redirect_to boat_path(@boat)
    else
      render 'new'
    end
  end

  private

  def list_params
    params.require(:booking).permit(:start_date, :end_date, :boat_id, :user_id)
  end
  def set_boat
    @boat =Boat.find(params[:boat_id])
  end

end
