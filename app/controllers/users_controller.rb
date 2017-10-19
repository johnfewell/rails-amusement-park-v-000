class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]


  def new
    @user = User.new
  end

  def create
    #raise params.inspect

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
    else
      render :edit
    end
  end

private

  def require_login
    redirect_to '/' unless session.include? :user_id
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :name, :nausea, :happiness, :tickets, :height, :password, :admin)
  end
end
