class ReviewsController < ApplicationController
  def create
    @restaurant = find_restaurant
    @review = Review.new(params_permit)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurants_path
    else
      render "new"
    end
  end

  private

  def find_restaurant
    Restaurant.find(params[:restaurant_id])
  end

  def find_review
    Review.find(params[:id])
  end

  def params_permit
    params.require(:review).permit(:content, :rating)
  end
end
