class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = @link.posts.new(post_params)
    if @post.save
      flash[:notice] = "Your comment has been saved."
      redirect_to link_path(@post)
    else
      render 'new'
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
