class FinalArtsController < ApplicationController

  def index
    @final_arts = FinalArt.all
  end


end