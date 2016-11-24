class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @ingredients = Ingredient.all
    @dose = Dose.new
  end

  def new
  end

  def create
    @cocktail = Cocktail.build(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render :index
    end
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
