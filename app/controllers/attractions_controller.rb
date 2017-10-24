class AttractionsController < ApplicationController
  include SessionsHelper
  before_action :require_login
  before_action :current_user
  before_action :set_attraction, only: [:show, :edit, :update]

  def index
    @attractions = Attraction.all
  end

  def new
  end

  def show

  end

  def create
  end

  def update
  end

private

  def set_attraction
    @attraction = Attraction.find(params[:id])
  end

end
