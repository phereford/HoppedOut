class HopsController < ApplicationController
  def index
    render json: Hop.all
  end
end
