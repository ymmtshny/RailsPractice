class MicropostsController < ApplicationController

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
    current_user.microposts.find_by(id:params[:id]).destroy
    flash[:success] = "Micropost deleted"
    redirect_to current_user
  end

  private
  def micropost_params
    params.require(:micropost).permit(:context)
  end
end
