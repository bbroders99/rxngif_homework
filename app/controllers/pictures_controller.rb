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

    redirect_to "http://localhost:3000/all_pictures"
  end


  def destroy
  	@id = params[:id]
  	@pic = Picture.find_by({ :id => @id })
  	@pic.destroy

    redirect_to "http://localhost:3000/all_pictures"
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

    redirect_to "http://localhost:3000/picture_details/#{@id}"

  end

end
