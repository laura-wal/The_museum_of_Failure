class FinalArtsController < ApplicationController
  def index
    @finalarts = FinalArt.all
    @q = FinalArt.ransack

    respond_to do |format|
      format.html
      format.json { render json: @finalarts.to_json(include: :tags), status: 200 }
    end
  end

  def new
    @finalart = FinalArt.new
  end

  def create
    # final_art_params is the information from the form
    # @finalart = FinalArt.new(final_art_params)
    # @finalart.save
    @finalart = FinalArt.create(final_art_params)
   
    redirect_to(final_arts_path)
  end

  def show
    # @finalart = FinalArt.find(params[:q])
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
