class PostsControllerController < ApplicationController
  def list
    @every_posts = PostsModel.all.reverse
  end

  def new
  end

  def create
    @post = PostsModel.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.password = params[:password]
    @post.save
    flash[:success] = "게시글이 작성 되었습니다."
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
    if @post.password.to_s == params[:password]
      @post.title = params[:title]
      @post.content = params[:content]
      @post.save
      flash[:success] = "게시글이 수정 되었습니다."
      redirect_to root_path
    else
      flash[:danger] = "비밀번호가 틀렸습니다."
      redirect_to '/posts_controller/edit/' + @post.id.to_s
    end

  end

  def destroy
    @post = PostsModel.find(params[:post_num])
    if @post.password.to_s == params[:password]
      @post.destroy
      flash[:success] = "게시글이 삭제되었습니다."
      redirect_to root_path
    else
      flash[:danger] = "비밀번호가 틀렸습니다."
      redirect_to root_path
    end
  end
end
