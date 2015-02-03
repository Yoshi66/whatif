class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to posts_path
    end
  end

  def show
  end

  def help
  end

  def about
  end

end
