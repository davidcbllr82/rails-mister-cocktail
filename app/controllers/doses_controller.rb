class DosesController < ApplicationController
  def new; end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @review = Review.new
      render "cocktails/show"
    end
  end

  def destroy
  end
end
