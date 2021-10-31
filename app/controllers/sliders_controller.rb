class SlidersController < ApplicationController
  # before_action :set_slider, only: %i[ show edit update destroy ]

  def create
    @slider = Slider.new(slider_params)
    if @slider.save
      flash[:notice] = "Slider was successfully created."
      redirect_to root_path
    else
      flash[:danger] = "Slider was successfully failed."
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider
      @slider = Slider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def slider_params
      params.require(:slider).permit(images: [])
    end
end
