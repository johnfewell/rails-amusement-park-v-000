module AttractionsHelper
  def allowed_on_ride?
    if @current_user.tickets >= @attraction.tickets && @current_user.height >= @attraction.min_height
      return true
    end
  end
end
