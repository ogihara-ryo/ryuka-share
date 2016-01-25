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

class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  def index
    @messages = Message.all.includes(from: :profile)
  end

  def show
  end

  def new
    @message = Message.new
  end

  def edit
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to @message, notice: 'Message was successfully created.'
    else
      render :new
    end
  end

  def update
    if @message.update(message_params)
      redirect_to @message, notice: 'Message was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @message.destroy
    redirect_to messages_url, notice: 'Message was successfully destroyed.'
  end

  private

  def set_message
    @message = Message.includes(to: :profile).find(params[:id])
  end

  def message_params
    params.require(:message).permit(:from_user_id, :subject, :body)
  end
end
