# == Schema Information
#
# Table name: messages_relations
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  message_id :integer          not null
#

class MessagesRelation < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
end
