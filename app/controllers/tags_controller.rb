class TagsController < ApplicationController

  def new

    @finalart = FinalArt.find(params[:final_art_id])
    # @tag = Tag.new(:finalart=>@finalart)
    @tag = Tag.new(params[:id])
  end

  def create
    @finalart = FinalArt.find(params[:final_art_id])
    @tag = Tag.new(name: params[:tag][:name])
    @finalart.tags << @tag
    redirect_to(final_art_path(id: @finalart.id))
  end

  def search
  index
  render :index
  end

#cant figure out how to make my create page work -  
#hot do i add the new tags to the image?

# inputfrombox.tags.split (',').each do | tag |
#   tag.creat(name: tag)
end
