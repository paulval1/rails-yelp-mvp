class ReviewsController < ApplicationController

  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @review.restaurant = @restaurant
    if @review.save
      # if we create it, go to individual restaurant show page
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
