class ReviewsController < ApplicationController
  def create
    @island = Island.find(params[:island_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.island = @island
    if @review.save
      redirect_to island_path(@island)
    else
      @review = Review.new
      render 'islands/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
