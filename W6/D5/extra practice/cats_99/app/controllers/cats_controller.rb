class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])

    if @cat
      render :show
    else
      flash[:messages] = ["Unable to find cat with ID: #{params[:id]}"]
      redirect_to cats_url
    end
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    cat = Cat.new(strong_params)

    if cat.save
      redirect_to cats_url
    else
      flash[:messages] = ["Unable to create '#{cat.name}' as a cat!"]
      flash[:errors] = cat.errors.full_messages
      redirect_to cats_url
    end
  end

  def edit
    @cat = Cat.find_by(id: params[:id])

    if @cat
      render :edit
    else
      flash[:messages] = ["Unable to find cat with ID: #{params[:id]}"]
      redirect_to cats_url
    end
  end

  def update
    @cat = Cat.find_by(id: params[:id])

    if @cat.update(strong_params)
      redirect_to cat_url(@cat.id)
    else
      flash[:messages] = ["Unable to update the cat '#{@cat.name}'"]
      redirect_to cats_url
    end
  end

  def destroy # is it possible to make a delete request with an a tag?
    cat = Cat.find_by(id: params[:id])
    cat.destroy
    redirect_to cats_url
  end

  private

  def strong_params
    params.require(:cat).permit(:birth_date, :name, :color, :sex, :description)
  end
end
