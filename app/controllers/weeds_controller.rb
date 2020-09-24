class WeedsController < ApplicationController
  before_action :set_weed, only: [:show, :update, :destroy]

  # GET /weeds
  def index
    @weeds = Weed.all

    render json: @weeds
  end

  # GET /weeds/1
  def show
    render json: @weed
  end

  # POST /weeds
  def create
    @weed = Weed.new(weed_params)

    if @weed.save
      render json: @weed, status: :created, location: @weed
    else
      render json: @weed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weeds/1
  def update
    if @weed.update(weed_params)
      render json: @weed
    else
      render json: @weed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weeds/1
  def destroy
    @weed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weed
      @weed = Weed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def weed_params
      params.require(:weed).permit(:strain, :type, :brand)
    end
end
