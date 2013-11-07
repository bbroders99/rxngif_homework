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

end
