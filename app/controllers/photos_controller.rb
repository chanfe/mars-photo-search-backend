require 'uri'
require 'net/http'
require 'json'

class PhotosController < ApplicationController
  # before_action :set_photo, only: [:show, :edit, :update, :destroy]
  key = '&api_key=U1kRZbEkK32GwgT1XTtpi8OIibCsZv3jDLX3GQXj'
  url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?'

  # GET /photos
  # GET /photos.json
  # def index
  #   @photos = Photo.all
  # end

  # GET /photos/1
  # GET /photos/1.json
  # def show
  # end

  # GET /photos/new
  # def new
  #   @photo = Photo.new
  # end

  # GET /photos/1/edit
  # def edit
  # end

  # POST /photos
  # POST /photos.json
  def create
    if(:camera != 'all'){
      request_uri = url + 'sol=' + :sol +'&camera='+ :camera + key
    }
    else{
      request_uri = url + 'sol=' + :sol + key
    }
    
    uri = URI(request_uri)
    response = Net::HTTP.get(uri)
    @result = JSON.parse(response)
    
    render @result
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
