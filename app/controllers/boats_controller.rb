class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
    @user = current_user
  end

  def new
    @boat =  Boat.new
  end

  def create
    @user = current_user
  end

  def edit
  end

  def update

  end

  def destroy

  end
end
