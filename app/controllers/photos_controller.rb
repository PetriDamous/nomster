class PhotosController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @place = Place.find(params[:place_id])
        @place.photos.create(photo_params)
        redirect_to place_path(@place)
        
    end
    
    private 
    
    
    #Pulls in info from form and prevents hackers from injecting data we don't want in our app
    def photo_params
        params.require(:photo).permit(:photo, :caption)
    end
    
end
