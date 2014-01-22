class MinistersController < ApplicationController
  def index
    @ministers = Minister.all
  end

  def show
    @minister = Minister.find(params[:id])
  end
end
