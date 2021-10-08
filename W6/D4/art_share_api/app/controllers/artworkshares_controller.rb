class ArtworksharesController < ApplicationController
  
  def create
    shared = ArtworkShare.new(artworkshared_params)

    if shared.save
      render json: shared
    else
      render json: shared.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    shared = ArtworkShare.find(params[:id])

    shared.destroy 
    render json: shared
  end

  def artworkshared_params
    params.require(:artworkshare).permit(:artwork_id, :viewer_id)
  end
end