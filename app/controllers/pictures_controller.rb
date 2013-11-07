class PicturesController < ApplicationController
 
  def show
  	@id = params[:id]
  	@pic = Picture.find_by({ :id => @id })
  	@pic_source = @pic.source
  	@pic_caption = @pic.caption
  end


  def index
  	@pic_list = Picture.all
  end


  def new
  end


  def create
  	@a = Picture.new
  	@a.caption = params[:caption]
  	@a.source = params[:source]
  	@a.save

  end


  def destroy
  end

end
