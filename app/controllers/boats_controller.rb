class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(paramas[:id])
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
