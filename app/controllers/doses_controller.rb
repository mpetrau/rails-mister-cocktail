class DosesController < ApplicationController
  before_action :find_dose

  def create
    if @dose.save
      redirect_to tbd
    else
      render ''
    end
  end

  def destroy
    @dose.destroy
    redirect_to 'pages/cocktail'
  end

  private

  def find_dose
    @dose = Dose.find(params[:id])
  end
end
