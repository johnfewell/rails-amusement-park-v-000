require 'pry'
class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_name(params[:user][:name])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
 #https://www.railstutorial.org/book/basic_login
end
