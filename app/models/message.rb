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

class Message < ActiveRecord::Base
  belongs_to :from, class_name: :User, foreign_key: :from_user_id
  has_many :messages_relations
  has_many :to, through: :messages_relations, source: :user
end
