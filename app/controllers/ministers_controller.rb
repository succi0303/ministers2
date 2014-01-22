class MinistersController < ApplicationController
  def index
    @ministers = Minister.all
  end
end
