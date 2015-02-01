class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post = Post.new
    logger.debug '/////////////////////////////////////////////'
    logger.debug @user.feed
    logger.debug '/////////////////////////////////////////////'
    @feed_items = @user.feed.paginate(page: params[:page])
  end
end
