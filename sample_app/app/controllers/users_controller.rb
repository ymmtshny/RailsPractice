class UsersController < ApplicationController

  def index
    @users = User.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    User.find_by(id:params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def create
    # @user = User.new(params[:user])
    # これだとセキュリティ上問題があるので、以下のように
    # user_paramsをprivateで渡す。
    @user = User.new(user_params)
    if @user.save
      login @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # 更新に成功した場合を扱う。
      flash[:success] = '編集に成功しました。'
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name,
                                   :email,
                                   :password,
                                   :password_confirmation)
    end

end
