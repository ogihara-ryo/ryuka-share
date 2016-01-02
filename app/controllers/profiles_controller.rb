class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = params[:user_id]

    respond_to do |format|
      if @profile.save
        format.html { redirect_to action: :show, user_id: params[:user_id], notice: 'Profile was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to action: :show, id: @profile, notice: 'Profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to user_path(params[:user_id]), notice: 'Profile was successfully destroyed.' }
    end
  end

  private

  def set_profile
    @user = User.find(params[:user_id])
    @profile = Profile.find_by(user: @user)
  end

  def profile_params
    params.require(:profile).permit(:last_name, :first_name, :email, :telephone)
  end
end
