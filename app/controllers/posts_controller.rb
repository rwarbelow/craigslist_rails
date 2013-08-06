class PostsController < ApplicationController
  before_filter :require_login
  helper_method :logged_in?, :current_user

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = session[:id]

    if @post.save
      redirect_to post_path(@post)
    else
      @errors = @post.errors.full_messages
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
  end

  private

  def require_login
    unless logged_in?
      # flash[:error] = "You must be logged in to access this section"
      redirect_to :root
    end
  end
end

