class BookingsController < ApplicationController
  before_action :set_boat, only: [:index, :new, :create]

  def index
  end

  def new
    @booking =  Booking.new
  end

  def create
    raise
    @booking = Booking.new(list_params)
    @booking.boat = @boat
    @booking.user_id = current_user.id
    if @booking.save
      raise
      redirect_to boat_bookings_path
    else
      raise
      render 'shared/new'
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
