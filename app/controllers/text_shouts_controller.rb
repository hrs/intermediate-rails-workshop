class TextShoutsController < ApplicationController
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
    TextShout.new(text_shout_params)
  end

  def text_shout_params
    params.require(:text_shout).permit(:body)
  end
end
