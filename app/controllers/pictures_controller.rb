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
  	@pic = Picture.new
  	@pic.caption = params[:caption]
  	@pic.source = params[:source]
  	@pic.save
  end


  def destroy
  	@id = params[:id]
  	@pic = Picture.find_by({ :id => @id })
  	@pic.destroy
  end


  def edit
  	@id = params[:id]
  	@pic = Picture.find_by({ :id => @id })
  	@pic_source = @pic.source
  	@pic_caption = @pic.caption
  end


  def update
  	@id = params[:id]
  	@pic = Picture.find(@id)
  	@pic.caption = params[:caption]
  	@pic.source = params[:source]
  	@pic.save

  end

end
