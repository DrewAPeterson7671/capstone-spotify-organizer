class ArtistsController < ApplicationController

# may need to get rid of before_action and authenticate methods using rspotify prescribed approach tentatively

  before_action :authenticate

  def index
    if !params[:artist_name].empty?
      @artists = RSpotify::Artist.search(params[:artist_name])
    else
      redirect_to root_path
    end
  end
  def show
    @artist = RSpotify::Artist.find(params[:id])
  end
  def authenticate
    RSpotify.authenticate(“user key”, “user secret”)
  end
end
