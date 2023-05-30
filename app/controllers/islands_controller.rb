class IslandsController < ApplicationController
  before_action :set_island, only: %i[show edit update destroy]

  def index
    @islands = Island.all
  end

  def show
    @island
  end

  def new
    @island = Island.new
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

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :location, :price, :available, :description)
  end
end
