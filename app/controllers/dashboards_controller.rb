class DashboardsController < ApplicationController
  def show
    @ghosts = Ghost.all.sample(rand(5) + 1)
  end
end
