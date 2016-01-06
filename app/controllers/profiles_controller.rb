# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  last_name  :string
#  first_name :string
#  email      :string
#  telephone  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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

    if @profile.save
      redirect_to action: :show, user_id: params[:user_id], notice: 'Profile was successfully created.'
    else
      render :new
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to action: :show, id: @profile, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @profile.destroy
    redirect_to user_path(params[:user_id]), notice: 'Profile was successfully destroyed.'
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
