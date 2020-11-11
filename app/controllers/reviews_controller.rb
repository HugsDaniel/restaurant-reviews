class ReviewsController < ApplicationController
  def destroy
    @review = Review.find(params[:id])

    @restaurant = @review.restaurant

    @review.destroy

    redirect_to restaurant_path(@restaurant)
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])

    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
