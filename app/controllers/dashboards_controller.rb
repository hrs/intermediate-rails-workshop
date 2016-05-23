class DashboardsController < ApplicationController
  def show
    @new_shout = Shout.new
    @shouts = current_user.shouts
  end
end
