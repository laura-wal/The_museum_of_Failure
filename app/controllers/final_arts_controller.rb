class FinalArtsController < ApplicationController
  def index
    @finalarts = FinalArt.all
    #search ransack - how do i 
    @q = FinalArt.ransack(params[:q])
    @finalarts = @q.result(distinct:true)
  end

  def new
    @finalart = FinalArt.new
  end

  def create
    # final_art_params is the information from the form
    # @finalart = FinalArt.new(final_art_params)
    @finalart = FinalArt.create(final_art_params)
    # @finalart.save
    redirect_to(final_arts_path)
  end

  def show
    @finalart = FinalArt.find(params[:id])
    @tags = @finalart.tags
  end

  def update
  end

  private
  def final_art_params
    params.require(:final_art).permit(:name, :comment)
  end

end
