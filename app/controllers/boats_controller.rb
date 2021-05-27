class BoatsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boats = Boat.all
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

end
