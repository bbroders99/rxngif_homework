class PicturesController < ApplicationController
 
  def show

  	@id = params[:id]
  	@pic = Picture.find_by({ :id => @id })
  	@pic_source = @pic.source
  	@pic_caption = @pic.caption

  end

  def index

  	@a = Picture.all
  	
  end


#pictures = [
#  { source: "http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png", caption: "HTML5 Logo" },
#  { source: "http://upload.wikimedia.org/wikipedia/commons/f/f1/Ruby_logo.png", caption: "Ruby logo" },
#  { source: "http://upload.wikimedia.org/wikipedia/commons/1/16/Ruby_on_Rails-logo.png", caption: "Rails logo" },
#  { source: "http://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png", caption: "JavaScript logo" }
#]

#pictures.each do |pic|
#  p = Picture.new
#  p.source = pic[:source]
#  p.caption = pic[:caption]
#  p.save
#end




end
