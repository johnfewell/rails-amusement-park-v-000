class UsersController < ApplicationController
  include SessionsHelper

  before_action :require_login, only: [:show, :edit, :update]
  before_action :set_user, only: [:show, :edit, :update]
  before_action :current_user, only: [:show, :edit, :update]

  def hello
    if session[:user_id]
      set_user
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'User was successfully updated.'
    else2
      render :edit
    end
  end

private


  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:id, :name, :nausea, :happiness, :tickets, :height, :password, :admin)
  end
end
