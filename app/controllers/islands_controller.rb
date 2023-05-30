class IslandsController < ApplicationController
  before_action :set_island, only: %i[show edit update destroy]

  def index
    @islands = Island.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to island_path(@island)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :location, :price, :available, :description)
  end
end
