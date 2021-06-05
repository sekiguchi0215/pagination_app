class PostsController < ApplicationController
  PER_PAGE =10

  def index
    @Posts = Post.order(id: "DESC").page(params[:page]).pre(PER_PAGE)
  end

  def create
    post = Post.create!(post_params)
  end

  private

  def post_params
    params.requiere(:post).permit(:body)
  end
end
