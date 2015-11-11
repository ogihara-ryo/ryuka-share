# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  signin_id  :string           not null
#  password   :string           not null
#  admin      :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
end
