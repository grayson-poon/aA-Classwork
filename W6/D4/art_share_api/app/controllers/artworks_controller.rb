class ArtworksController < ApplicationController
  # def index
  #   artworks = Artwork.all + ArtworkShare.all
    
  #   render json: artworks
  # end

  def index
    if params.has_key?(:user_id)
      artworks = Artwork.where(artist_id: params[:user_id]) + 
                ArtworkShare.where(viewer_id: params[:user_id])
    else
      artworks = Artwork.all
    end

    render json: artworks
  end

  def create
    artwork = Artwork.new(artwork_params)
    
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end

  end

  def show
    id = params[:id]
    artwork = Artwork.find(id)

    render json: artwork
  end

  def update
    artwork = Artwork.find(params[:id])

    if artowrk.update(artwork_params)
      render json: artwork
    else
      render json: artworkk.errors.full_messages, status: 422
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    
    artwork.destroy
    render json: artwork 

  end

  def artwork_params
    params.require(:artwork).permit(:title, :image_url,:artist_id)
  end

end