class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post].permit(:title, :text))
    @post.save
    redirect_to action: :show, id: @post.id
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def index
    @posts = Post.all
  end
  
  private 
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
