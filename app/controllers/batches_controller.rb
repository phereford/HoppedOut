class BatchesController < ApplicationController
  def index
    render json: Batch.all
  end
end
