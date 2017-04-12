class PostsControllerController < ApplicationController
  def list
    @every_posts = PostsModel.all
  end

  def new
  end

  def create
    @post = PostsModel.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.password = params[:password]
    @post.save

    redirect_to root_path
  end

  def show
    @post = PostsModel.find(params[:id])
  end

  def edit
    @edit_post = PostsModel.find(params[:id])
  end

  def update
    @post = PostsModel.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save

    redirect_to root_path
  end

  def destroy
    @post = PostsModel.find(params[:post_num])
    if @post.password == params[:password].to_i
      @post.destroy
      flash[:success] = "글이 삭제되었습니다."
      redirect_to root_path
    else
      flash[:danger] = "비밀번호가 틀렸습니다."
      redirect_to root_path
    end
  end
end
