# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  author_id   :integer
#  category_id :integer
#  title       :string
#  description :text
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    sign_in users(:admin)
    @task = tasks(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create task' do
    assert_difference('Task.count') do
      post :create, task: { author_id: @task.author_id, category_id: @task.category_id,
                            description: @task.description, priority: @task.priority, title: @task.title }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test 'should show task' do
    get :show, id: @task
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @task
    assert_response :success
  end

  test 'should update task' do
    patch :update, id: @task, task: { author_id: @task.author_id, category_id: @task.category_id,
                                      description: @task.description, priority: @task.priority, title: @task.title }
    assert_redirected_to task_path(assigns(:task))
  end

  test 'should destroy task' do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
