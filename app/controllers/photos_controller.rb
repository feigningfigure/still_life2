class PhotosController < ApplicationController

skip_before_filter :verify_authenticity_token

  def index

    @photos = Photo.popular_url

    @photo = Photo.new

  end

  def new
    @choice = params[:url]

  end


def create

    title = params[:title]
  url = params[:url]
  description = params[:description]

  Photo.create(
    title: title,
    description: description,
    url: url
  )

  redirect_to photos_path

end

def show

  @photos = Photo.all



end

def view

  @photo = Photo.find(params[:id])
end

def delete
  photo = Photo.find(params[:id])
  photo.destroy

  redirect_to photos_path

end

  # def create

  #   @photo = Photo.create(photo_attributes)

  #   redirect_to photos_path

  # end




  # private

  # def photo_attributes
  #   params.require(:photo).permit(:title, :description, :url)
  # end

end
