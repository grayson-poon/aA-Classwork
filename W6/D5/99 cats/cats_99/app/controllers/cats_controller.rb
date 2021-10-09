class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @spec_cat = Cat.find_by(id: params[:id])
    render :show
  end

  def new
    render :new
  end

end
