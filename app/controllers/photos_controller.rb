require 'uri'
require 'net/http'
require 'json'
require 'pry'


class PhotosController < ApplicationController  

  # POST /photos
  # POST /photos.json
  def create
    key = '&api_key=U1kRZbEkK32GwgT1XTtpi8OIibCsZv3jDLX3GQXj'
    url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?'
    if params[:camera] != 'all'
      request_uri = url + 'sol=' + params[:sol].to_s + '&camera=' + params[:camera] + key
    else
      request_uri = url + 'sol=' + params[:sol].to_s + key
    end
    
    uri = URI(request_uri)
    response = Net::HTTP.get(uri)
    @result = JSON.parse(response)
    
    render json: @result
  end

end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_photo
#       @photo = Photo.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def photo_params
#       params.fetch(:photo, {})
#     end
# end
