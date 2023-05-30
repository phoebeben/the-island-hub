class ReviewsController < ApplicationController
  def create
    @island = Island.find(params[:id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to island_path(@island)
    else
      @review = Review.new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :island_id)
  end
end
