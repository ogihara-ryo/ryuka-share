# == Schema Information
#
# Table name: schedules
#
#  id          :integer          not null, primary key
#  author_id   :integer
#  start       :datetime
#  end         :datetime
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  setup do
    sign_in users(:admin)
    @schedule = schedules(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedules)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create schedule' do
    assert_difference('Schedule.count') do
      post :create, schedule: { author_id: @schedule.author_id,
                                description: @schedule.description, end: @schedule.end,
                                start: @schedule.start, title: @schedule.title }
    end

    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test 'should show schedule' do
    get :show, id: @schedule
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @schedule
    assert_response :success
  end

  test 'should update schedule' do
    patch :update, id: @schedule, schedule: { author_id: @schedule.author_id,
                                              description: @schedule.description, end: @schedule.end,
                                              start: @schedule.start, title: @schedule.title }
    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test 'should destroy schedule' do
    assert_difference('Schedule.count', -1) do
      delete :destroy, id: @schedule
    end

    assert_redirected_to schedules_path
  end
end
