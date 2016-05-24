class PhotoShoutsController < ApplicationController
  def create
    shout = current_user.shouts.build(content: build_content)
    if shout.save
      redirect_to dashboard_path
    else
      flash.alert = "Couldn't shout that. =("
      redirect_to dashboard_path
    end
  end

  private

  def build_content
    PhotoShout.new(photo_shout_params)
  end

  def photo_shout_params
    params.require(:photo_shout).permit(:image)
  end
end
