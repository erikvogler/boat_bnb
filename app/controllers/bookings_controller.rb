class BookingsController < ApplicationController
  before_action :set_boat, only: [:index, :new, :create]

  def index
    @bookings = Booking.where( boat_id: @boat)
    # @bookings.user = @user
  end

  def new
    @booking =  Booking.new
  end

  def create
    @booking = Booking.new(list_params)
    @booking.boat = @boat
    @booking.user_id = current_user.id
    @booking.status = "Pending host validation"
    @booking.total_value = (@booking.end_date - @booking.start_date).to_i * @booking.boat.price_per_night
    if @booking.save
      redirect_to boat_bookings_path
    else
      render 'shared/new'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(boat_params)
    redirect_to boat_bookings_path(@booking.boat)
  end

  private

  def list_params
    params.require(:booking).permit(:start_date, :end_date, :status, :total_value)
  end

  def boat_params
    params.permit(:start_date, :end_date, :status, :total_value)
  end
  def booking_params
    params.permit(:id)
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end
end
