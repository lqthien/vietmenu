require 'spec_helper'

describe HomeController do
  describe 'GET index' do
    it 'should render index successfully' do
      get :index
      expect(response).to be_success
      expect(response).to render_template :index
    end
  end
end