class PicnicsController < ApplicationController
  def index
    @areas = Item.areas.keys
    @categories = Item.categories.keys
  end

end
