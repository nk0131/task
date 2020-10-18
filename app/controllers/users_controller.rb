class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_path(@user), notice: "ユーザー「#{@user.name}」を更新しました。"
    else
      render :new
    end
  end

  def destroy 
    @user = User.find(params[:id])
    @user.destroy 
    redirect_to users_url, notice: "ユーザー「#{@user.name}」を削除しました。"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if params[:back].present?
      render :new 
      return
    end

    if @user.save
      redirect_to user_path(@user), notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end

  def confirm_new
    @user = User.new(user_params)
    render :new unless @user.valid?
  end

  

  

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
