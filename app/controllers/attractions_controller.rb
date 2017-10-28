class AttractionsController < ApplicationController
  include SessionsHelper
  before_action :require_login
  before_action :current_user
  before_action :set_attraction, only: [:show, :edit, :update]

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def show

  end

  def create
    @attraction = Attraction.new(attraction_params)

    if @attraction.save
      redirect_to attraction_path(@attraction), message: 'Attraction was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @attraction.update(attraction_params)
      redirect_to attraction_path(@attraction), message: 'Attraction was successfully updated.'
    else
      render :edit
    end
  end

  def destroy

  end

private

  def set_attraction
    @attraction = Attraction.find(params[:id])
  end

  def attraction_params
    params.require(:attraction).permit(:id, :name, :nausea_rating, :happiness_rating, :tickets, :min_height)
  end


end
