class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to doses_path
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
    redirect_to cocktails_path
  end

end
