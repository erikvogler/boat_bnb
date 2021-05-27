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
    @booking.user_id = current_user.id
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

  private

  def list_params
    params.require(:booking).permit(:start_date, :end_date, :boat_id, :user_id)
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end
end
