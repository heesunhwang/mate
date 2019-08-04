class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :destroy]
  before_action :set_item

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.item = @item
    @review.save
  end

  def destroy
    @review.destroy
  end

  private
  def set_review
    @review = Review.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
