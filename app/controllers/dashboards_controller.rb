class DashboardsController < ApplicationController
  def show
    @ghosts = Ghost.all.sample(number_of_ghosts).shuffle
  end

  private

  def number_of_ghosts
    @_number_of_ghosts ||= rand(3) + rand(3) + 1
  end
end
