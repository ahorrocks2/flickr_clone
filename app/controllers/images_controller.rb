class ImagesController < ApplicationController
  before_filter :authenticate_user!, except: [ :show ]
  def new
    @user = current_user
    @image = @user.images.new
  end

  def create
    @user = User.find(params[:user_id])
    @image = @user.images.new(image_params)

    if @image.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @image = Image.find(params[:id])
    @user = @image.user
  end

  def edit
    @user = User.find(params[:user_id])
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @user = User.find(params[:user_id])

    if @image.update(image_params)
      redirect_to user_image_path(@user, @image)
    else
      render :edit
    end
  end


  private
    def image_params
      params.require(:image).permit(:title, :caption, :upload)
    end
end
