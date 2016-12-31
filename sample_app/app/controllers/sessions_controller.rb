class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email:params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      login user
      #ログイン成功 => ユーザー画面へ.
      redirect_to user
    else
      #ログイン失敗
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    if logged_in?
      logout
    end
    redirect_to root_url
  end
end
