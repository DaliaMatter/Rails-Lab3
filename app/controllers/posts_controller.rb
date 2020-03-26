class PostsController < ApplicationController
  def index
    @posts = Post.all.order(updated_at: :desc)
  end

  def show
    return @post = Post.find(params[:id]), @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = User.find(1).posts.create(post_params)
    if @post.persisted?
      redirect_to :posts
    else
      render :new
    end  
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to :posts
    else 
      render :edit
    end  
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to :posts
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

end
