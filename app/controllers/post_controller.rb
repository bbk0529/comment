class PostController < ApplicationController
  def index #게시물 다 보여주는 페이지
    @posts=Post.all
    @users=User.all
  end

  def new  #게시물 작성
  end

  def create #작성된 게시물 DB 에 넣는 액션

    @user_id = session['id'].nil?? -1 : session['id']

    Post.create(
      user_id: @user_id,
      title: params['title'],
      content: params['content']
    )
    redirect_to '/'
  end

  def show #1개의 게시물
    @post=Post.find(params[:id])
    #@comments = @post.replys
    #@comments = Reply.find_by(post_id: @post.id)
  end

  def create_comment #해당하는 글에 댓글 다는 액션
    Reply.create(
      post_id: params['id'],
      content: params['content']
    )
    redirect_to "/post/show/#{params['id']}"
  end

  def edit
    @post=Post.find(params[:id])
    
  end

  def modify
    post=Post.find(params[:id])
    post.update(
      title: params['title'],
      content: params['content']
    )
    redirect_to "/post/show/#{params[:id]}"
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to '/'
  end
end
