class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end

  def full_title(args='')
    if args.empty?
      title = args
    else
      title = args + ' | Ruby on Rails Tutorial Sample App'
    end
  end
end
