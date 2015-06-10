class TagsController < ApplicationController

  def new
    @finalart = FinalArt.find(params[:final_art_id])
    # @tag = Tag.new(:finalart=>@finalart)
    @tag = Tag.new(params[:id])
  end

  def create
    @finalart = FinalArt.find(params[:final_art_id])
    # @tag = FinalArt.tags.create(params[:tag])
    # redirect_to(final_art_tag_path)
  end

#cant figure ut how to make my create page work -  
#hot do i add the new tags to the image?

# inputfrombox.tags.split (',').each do | tag |
#   tag.creat(name: tag)
end
