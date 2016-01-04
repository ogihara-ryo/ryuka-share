# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  from_user_id :integer
#  subject      :string
#  body         :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create message' do
    assert_difference('Message.count') do
      post :create, message: {
        from_user_id: @message.from_user_id,
        subject: @message.subject,
        body: @message.body
      }
    end

    assert_redirected_to message_path(assigns(:message))
  end

  test 'should show message' do
    get :show, id: @message
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @message
    assert_response :success
  end

  test 'should update message' do
    patch :update, id: @message, message: {
      from_user_id: @message.from_user_id,
      subject: @message.subject,
      body: @message.body
    }
    assert_redirected_to message_path(assigns(:message))
  end

  test 'should destroy message' do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end
