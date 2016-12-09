class UsersController < ApplicationController
  def index
  end

  def show
    @user = Hash.new
    if params[:username] == 'shinyamamoto'
      @user[:name] = 'Shinya Yamamoto'
      @user[:username] = 'shinyamamoto'
      @user[:location] = 'Tokyo, JAPAN'
      @user[:about] = 'Nice to meet you!!'
    elsif params[:username] == 'hello'
      @user[:name] = 'Helloさん'
      @user[:username] = 'hello'
      @user[:location] = 'Hello, JAPAN'
      @user[:about] = 'Nice to meet you!!'
    end

  end
end
