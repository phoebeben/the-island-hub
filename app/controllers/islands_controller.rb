class IslandsController < ApplicationController
  before_action :set_island, only: %i[show edit update destroy]

  def index
    if params[:category]
      @islands = Island.where('category = ?', params[:category])
    else
      @islands = Island.all
    end
  end

  def show
    @island = Island.find(params[:id])
    @review = Review.new
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to root_path
    else
      render :new, status: :unproccessable_entity
    end
  end

  def edit
    @island
  end

  def update
    @island = Island.find(params[:id])
    if @island.update(island_params)
      redirect_to root_path
    else
      render :update, status: :unproccessable_entity
    end
  end

  def destroy
    @island = Island.find(params[:id])
    @island.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :location, :price, :available, :description, photos: [])
  end
end
