class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def index
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
   # respond_to do |format|
    #  format.html { redirect_to doses_url, notice: 'Dose was successfully destroyed.' }

  end


  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id )
  end
end
