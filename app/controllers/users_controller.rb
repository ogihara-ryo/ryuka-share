# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  signin_id       :string           not null
#  password_digest :string           not null
#  admin           :boolean          default(FALSE), not null
#  remember_token  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'ユーザーが正常に作成されました'
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'ユーザーが正常に更新されました'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'ユーザーを削除しました'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:signin_id, :password, :admin)
  end
end
