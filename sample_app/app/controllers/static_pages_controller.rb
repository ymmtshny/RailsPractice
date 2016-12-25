class StaticPagesController < ApplicationController
  def home
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
