require 'rails_helper'

RSpec.describe TopController, type: :controller do
  subject { response }

  describe 'GET #index' do
    before { get :index }
    it { is_expected.to have_http_status(:ok) }
    it { is_expected.to render_template(:index) }
  end
end
