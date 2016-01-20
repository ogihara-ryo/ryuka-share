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

class Profile < ActiveRecord::Base
  belongs_to :user

  def full_name
    "#{last_name} #{first_name}"
  end
end
