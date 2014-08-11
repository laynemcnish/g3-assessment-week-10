class GifController < ApplicationController

def new
@gif = Gif.new
end

def create
  @gif = Gif.create(permitted_parameters)
  if @gif.save
    flash[:notice] = "gif created successfully"
    redirect_to root_path
  else
    render :new
  end
end

private
def permitted_parameters
  permitted = params.require(:gif).permit(:url, :title)
end

end