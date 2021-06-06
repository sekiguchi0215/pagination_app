class PostsController < ApplicationController
  PER_PAGE =10

  def index
    @post = Post.new
    @posts = Post.order(id: "DESC").page(params[:page]).per(PER_PAGE)
  end

  def create
    if Post.create(post_params)
      redirect_to root_path
    else
      render index
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
