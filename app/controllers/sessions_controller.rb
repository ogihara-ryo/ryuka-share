class SessionsController < ApplicationController
  skip_before_action :signin_required

  def new
  end

  def create
    user = User.find_by(signin_id: session_param[:signin_id])
    if authenticated?(user)
      sign_in user
      redirect_back_or root_path
    else
      flash.now[:danger] = t('message_invalid_signin')
      render :new
    end
  end

  def destroy
    sign_out if signed_in?
    redirect_to root_path
  end

  private

  def session_param
    params.require(:session).permit(:signin_id, :password)
  end

  def authenticated?(user)
    user && user.authenticate(session_param[:password])
  end
end
