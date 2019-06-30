class LoginsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    puts @user
    if @user.registered?  # 認証OK?
      session[:login] = @user.id  # session[:login]にユーザーidをセットする
      redirect_to statuses_path  # /todosにリダイレクト
    else
      render :new
    end
  end

  def destroy
    session[:login] = nil  # session[:login]がnilになる
    redirect_to logins_new_path  # logins(new)へリダイレクトする
  end

  def user_params
    params.require(:user).permit(:id, :screen_name, :password)
  end
end
