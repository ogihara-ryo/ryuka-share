# == Schema Information
#
# Table name: tasks
#
#  id            :integer          not null, primary key
#  id_per_days   :integer          not null
#  target        :date             not null
#  name          :string           not null
#  priority      :integer
#  category_id   :integer
#  estimate_hour :float
#  started_at    :datetime
#  finished_at   :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'メンバー定義' do
    it { is_expected.to respond_to(:id) }
    it { is_expected.to respond_to(:signin_id) }
    it { is_expected.to respond_to(:password) }
    it { is_expected.to respond_to(:admin) }
    it { is_expected.to respond_to(:created_at) }
    it { is_expected.to respond_to(:updated_at) }
  end
end
