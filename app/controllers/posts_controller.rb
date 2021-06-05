class PostsController < ApplicationController
  def index
    @Posts = Post.order(id: "DESC")
  end

  def create
  end
end
