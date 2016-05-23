class ShoutsController < ApplicationController
  def show
    @shout = find_shout
  end

  def create
    shout = current_user.shouts.build(shout_params)
    shout.save
    redirect_to dashboard_path
  end

  private

  def find_shout
    Shout.find(params[:id])
  end

  def shout_params
    params.require(:shout).permit(:body)
  end
end
