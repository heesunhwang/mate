class PicnicsController < ApplicationController
  def index
    if params[:search]
      @search_result = Item.where('title || content LIKE ?', "%#{params[:search]}%")
      byebug
    else
      @search_result = Item.all
    end
    @areas = Item.areas.keys
    @categories = Item.categories.keys
  end


end
