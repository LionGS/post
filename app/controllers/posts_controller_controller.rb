class PostsControllerController < ApplicationController
  def list
    @every_posts = PostsModel.all.reverse
  end

  def new
  end

  def create
    @post = PostsModel.new
    @post.title = params[:title_c]
    @post.content = params[:content_c]
    @post.password = params[:password_c]
    @post.save
    flash[:success] = "게시글이 작성 되었습니다."
    redirect_to root_path
  end

  def show
    @post = PostsModel.find(params[:id_s])
  end

  def edit
    @edit_post = PostsModel.find(params[:id_e])
  end

  def update
    @post = PostsModel.find(params[:id_u])
    if @post.password.to_s == params[:password_u]
      @post.title = params[:title_u]
      @post.content = params[:content_u]
      @post.save
      flash[:success] = "게시글이 수정 되었습니다."
      redirect_to root_path
    else
      flash[:danger] = "비밀번호가 틀렸습니다."
      #redirect_to '/posts_controller/edit/' + @post.id.to_s
      redirect_to :back
    end

  end

  def destroy
    @post = PostsModel.find(params[:post_num_d])
    if @post.password.to_s == params[:password_d]
      @post.destroy
      flash[:warning] = "게시글이 삭제되었습니다."
      redirect_to root_path
    else
      flash[:danger] = "비밀번호가 틀렸습니다."
      redirect_to root_path
    end
  end
end
