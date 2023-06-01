class IslandsController < ApplicationController
  before_action :set_island, only: %i[show edit update destroy]

  def index
    if params[:category]
      @islands = Island.all.filter do |island|
        !island.categories.where(name: params[:category]).empty?
      end
    else
      @islands = Island.all
    end
  end

  def show
    @booking = Booking.new
    @island = Island.find(params[:id])
    @review = Review.new
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.host = current_user
    if @island.save
      params[:island][:category_ids].each do |id|
        IslandCategory.create(island_id: @island.id, category_id: id.to_i)
      end
      redirect_to island_path(@island)
    else
      render 'islands/new', status: :unprocessable_entity
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
