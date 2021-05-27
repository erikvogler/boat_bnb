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
  end

  def edit
  end

  def update

  end

  def destroy

  end

 private

 def set_user
   @user = User.find(params[:user_id])
 end
end
