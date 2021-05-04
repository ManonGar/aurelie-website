class DrawingsController < ApplicationController
  def index
    @drawings = Drawing.all
  end


  private

  def drawing_params
    params.require(:drawing).permit(:title, :date, :photo)
  end
end
