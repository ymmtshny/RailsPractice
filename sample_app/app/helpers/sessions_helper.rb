module SessionsHelper

  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session[:user_id] = nil
    @current_user = nil
  end

  def current_user
    if @current_user.nil?
      @current_user = User.find_by(id: session[:user_id])
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
end
