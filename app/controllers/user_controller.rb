class UserController < ApplicationController
  def signup
  end

  def logout
      session.clear
      redirect_to '/'

  end

  def signup_process
    User.create(
      name: params['name'],
      email: params['email'],
      password: params['password']
    )

    flash[:notice] = "User #{params['name']} 's been successfully created"
    redirect_to '/user/login'
  end

  def login
  end


  #1. DB에 유저가 없을때 params[:email]로 DB검색시 없을 때 )
    # 너 회원 아니거나 이메일이 잘못 입력되었음 
  #2. DB에 유저가 있는데,
    # - 패스워드가 다를 때 -> "패스워드가 틀렸어"
    # - 패스워드가 맞을 때 -> "로그인"

  def login_process
    @email = params['email']
    @password = params['password']
    @user=User.find_by(email: @email)
    if @user
      if @user.password == @password #to be logged in
        session['id']=@user.id
        flash[:notice] = "#{@user.name} has been successfully logged in"
      else
        flash[:notice] = 'Wrong password seemed to be given'
      end
    else
      flash[:notice] = 'There is no such name'
    end
    redirect_to '/'
  end


  def show
  end
end
