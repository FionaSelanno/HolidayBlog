class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @post = Post.new
  end

  def show
    @post = Post.find( params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new( post_params )
    @post.user = current_user
    # if saved redirect to showpage
    if @post.save
      redirect_to @post
    # if not well saved redisplay the form with render so the valid info won't get lost
    else
    render :new
  end
end

private
  def post_params
    params.require( :post ).permit( :title, :content)
  end
end
