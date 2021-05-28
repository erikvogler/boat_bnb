class BookingsController < ApplicationController
  before_action :set_boat, only: [:index, :new, :create]
  before_action :set_user, only: [:index]

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
    # respond_to do |format|
    #   if @booking.save
    #     format.html { redirect_to boat_bookings_path, notice: 'Booking was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @booking }
    #     format.js   { render action: 'show', status: :created, location: @booking }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @booking.errors, status: :unprocessable_entity }
    #     format.js   { render json: @booking.errors, status: :unprocessable_entity }
    #   end
    # end
  end
  def edit
    @booking = Booking.find(params[:id])
  end
  def update
    @booking = Booking.find(params[:id])
    @booking.update(list_params)
    redirect_to boat_bookings_path(@booking.boat)
  end

  private

  def list_params
    params.permit(:start_date, :end_date, :status, :total_value)
  end
  def booking_params
    params.permit(:id)
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end
  def set_user
    # @user = User.find(params[:user_id])
  end
end
