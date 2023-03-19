class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")
  end

  def create
    post = Post.create(content: params[:content])
    rebder json:{ post: post }
  end
end
