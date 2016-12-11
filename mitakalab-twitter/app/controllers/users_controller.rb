class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find_by(username: params[:username])
  end

  def new
  end

  def create
    @user = User.new
    @user[:name] = params[:user][:name]
    @user[:username] = params[:user][:username]
    @user[:location] = params[:user][:location]
    @user[:about] = params[:user][:about]
    @user.save
    redirect_to '/users/index'
  end
end
