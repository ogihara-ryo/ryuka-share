# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  signin_id       :string           not null
#  password_digest :string           not null
#  admin           :boolean          default(FALSE), not null
#  remember_token  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy
  has_many :groups
  has_many :group_members_relations
  has_many :groups, through: :group_members_relations, source: :group
  has_many :created_tasks, class_name: :Task
  has_many :assigned_tasks_relations
  has_many :assigned_tasks, through: :assigned_tasks_relations, source: :task
  has_many :created_topics, class_name: :Topic
  has_many :send_messages, class_name: :Message
  has_many :messages_relations
  has_many :receive_messages, through: :messages_relations, source: :message
  has_many :created_schedules, class_name: :Schedule
  has_many :assigned_schedules_relations
  has_many :assigned_schedules, through: :assigned_schedules_relations, source: :schedule

  has_secure_password

  before_create :create_remember_token

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end
