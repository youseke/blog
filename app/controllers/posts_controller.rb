class PostsController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(params[:post])

    if @post.save
      redirect_to action: :show, id: @post.id
    else
      render "new"
    end
  end

  def show
    @post=Post.find(params[:id])
  end

  def index
    @post=Post.all
  end

  def edit
    @post=Post.find(params[:id])
  end

  def update
    #render text: params[:post].inspect
    @post=Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to action: :show, id: @post.id
    else
      render "edit"
    end
  end

  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to action: :index
  end

end


