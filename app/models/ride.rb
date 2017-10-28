class Ride < ActiveRecord::Base
  include SessionsHelper

  belongs_to :user
  belongs_to :attraction


  def take_a_ride
    @attraction = Attraction.find(params[:attraction_id])
    current_user
    if @current_user.tickets < @attraction.tickets && @current_user.height < @attraction.min_height
      redirect_to user_path(@current_user), notice: "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif @current_user.height < @attraction.min_height
      redirect_to user_path(@current_user), notice: "Sorry. You are not tall enough to ride the #{attraction.name}."
    elsif @current_user.tickets < @attraction.tickets
      redirect_to user_path(@current_user), notice: "Sorry. You do not have enough tickets to ride the #{attraction.name}."
    else
      @current_user.update(:tickets => @current_user.tickets - @attraction.tickets)
      redirect_to user_path(@current_user), notice: "Thanks for riding #{@attraction.name}!"
    end
  end






end
