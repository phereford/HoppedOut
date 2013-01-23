class MaltsController < ApplicationController
  def index
    render json: Malt.all
  end
end
