class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def like
    @picture = Picture.find(params[:id])
    @picture.update_likes(current_user)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
      format.json { render :like }
    end
  end

end
