class ImagesController < ApplicationController
  def new
    @user = current_user
    @image = @user.images.new
  end

  def create
    @user = current_user
    @image = current_user.images.new(image_params)

    if @image.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @image = Image.find(params[:id])
  end



  private
    def image_params
      params.require(:image).permit(:title, :caption, :upload)
    end
end
