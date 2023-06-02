class IslandsController < ApplicationController
  before_action :set_island, only: %i[show edit update destroy]

  def index
    @islands = []
    @markers = []
    if params[:category]
      Island.all.each do |island|
        next unless island.categories.include?(Category.where(name: params[:category])[0])

        @islands << island
        marker = {
                  lat: island.latitude,
                  lng: island.longitude,
                  info_window_html: render_to_string(partial: "map_info", locals: { island: })
                  }
        @markers << marker if island.geocoded?
      end
    else
      @islands = Island.all
      unless @islands.empty?
        @markers = @islands.geocoded.map do |island|
          {
            lat: island.latitude,
            lng: island.longitude,
            info_window_html: render_to_string(partial: "map_info", locals: { island: })
          }
        end
      end
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
  end

  def update
    @island = Island.find(params[:id])
    if @island.update(island_params)
      params[:island][:category_ids].each do |id|
        IslandCategory.create(island_id: @island.id, category_id: id.to_i)
      end
      redirect_to island_path(@island)
    else
      render :edit, status: :unproccessable_entity
    end
  end

  def destroy
    @island = Island.find(params[:id])
    @island.destroy
    redirect_to root_path, status: :see_other
  end

  def users_islands
    @islands = current_user.islands
    @booked_islands = current_user.bookings.map do |booking|
      booking.island
    end
  end

  private

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :location, :price, :available, :description, :category_ids, photos: [])
  end
end
