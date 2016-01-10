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

require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:admin)
    sign_in @profile.user
  end

  test 'should get new' do
    get :new, user_id: @profile.user
    assert_response :success
  end

  test 'should create profile' do
    assert_difference('Profile.count') do
      post :create, user_id: @profile.user, profile: {
        email: @profile.email,
        first_name: @profile.first_name,
        last_name: @profile.last_name,
        telephone: @profile.telephone,
        user_id: @profile.user_id
      }
    end
  end

  test 'should show profile' do
    get :show, user_id: @profile.user
    assert_response :success
  end

  test 'should get edit' do
    get :edit, user_id: @profile.user, id: @profile
    assert_response :success
  end

  test 'should update profile' do
    patch :update, user_id: @profile.user, id: @profile, profile: {
      email: @profile.email,
      first_name: @profile.first_name,
      last_name: @profile.last_name,
      telephone: @profile.telephone
    }
  end

  test 'should destroy profile' do
    assert_difference('Profile.count', -1) do
      delete :destroy, user_id: @profile.user
    end
  end
end
