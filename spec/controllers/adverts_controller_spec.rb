require 'spec_helper'

describe AdvertsController do
  render_views

  let(:user) { create :user }
  let(:advert) { create :advert }
  let(:admin_advert) { create :admin_advert }

  before do
    sign_in user
  end

  describe "#index" do
    it "renders advert" do
      get :index
      response.should be_success
      expect(response).to render_template("index")
    end
  end

  describe "#show" do
    it 'is success' do
      get :show, id: advert.to_param
      response.should be_success
    end
  end

  describe '#edit' do
    it 'is success' do
      get :show, id: advert.to_param
      response.should be_success
    end
  end
  
  describe '#new' do
    it 'is success' do
      get :new
      response.should be_success
    end
  end
end