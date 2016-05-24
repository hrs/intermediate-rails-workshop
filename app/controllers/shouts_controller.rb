class ShoutsController < ApplicationController
  def show
    @shout = find_shout
  end

  private

  def find_shout
    Shout.find(params[:id])
  end
end
