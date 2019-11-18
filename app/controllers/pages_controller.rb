class PagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.microposts.paginate(page: params[:page], per_page: 30)
    end
  end
  def help
  end

  def about
  end

  def contact
  end
end