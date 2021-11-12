class Api::PokemonController < ApplicationController
  def index 
    @allPokemon = Pokemon.all 
    render :index 
  end

  def show 
    @pokemon = Pokemon.find_by(id: params[:id])
    render :show
  end

end
