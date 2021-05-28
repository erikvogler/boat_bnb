class BoatsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @boats = Boat.search_by_location(params[:query])
    else
      @boats = Boat.all
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  def new
    @boat =  Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user_id = current_user.id
    if @boat.save
      redirect_to boat_bookings_path(@boat)
    else
      render 'new'
    end
  end

  def edit
  end

  def update

  end

  def destroy

  end

 private

 def boat_params
    params.require(:boat).permit(:name, :description, :location, :price_per_night, :pictures_url)
 end

 def set_user
   @user = User.find(params[:user_id])
 end
end
