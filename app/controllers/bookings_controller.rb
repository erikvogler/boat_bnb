class BookingsController < ApplicationController

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

  end
end
