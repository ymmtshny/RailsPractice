module SessionsHelper

  def login(user)
    session[:user_id] = user.id
  end

  def logout
    forget @current_user
    session[:user_id] = nil
    @current_user = nil
  end

  def current_user
    if session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
    elsif cookies.signed[:user_id]
      user = User.find_by(id: cookies.signed[:user_id])
      if user && user.authenticated?(cookies[:remember_token])
        login user
        @current_user = user
      end
    else
      @current_user
    end
  end

  #ログインしている=>true
  def logged_in?
    if current_user.nil?
      return false
    else
      return true
    end
  end

  #クッキーで永続化
  def remember(user)
    user.remember #remember_digestを追加
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent.signed[:remember_token] = user.remember_token
  end

  # 永続的セッションを破棄する
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end


end
