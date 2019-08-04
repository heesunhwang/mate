class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :toggle]

  def show
    @reviews = Review.where(item_id: params[:id]).order(created_at: :desc)
    @recommendations = Item.where(category: @item.category).where.not(id: @item.id).order("random()").limit(3)
  end

  def toggle
    if user_item = current_user.user_items.find_by(item: @item)
      user_item.destroy
    else
      current_user.user_items.create(item: @item)
    end
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end
