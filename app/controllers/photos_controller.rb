class PhotosController < InheritedResources::Base

  private

    def photo_params
      params.require(:photo).permit(:title, :content, :image)
    end
end