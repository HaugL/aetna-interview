require 'rails_helper'
require "spec_helper"

RSpec.describe MoviesController, type: :controller do
  describe "movies controller" do
    render_views
    let(:json) { JSON.parse(response.body) }

    before(:all) do
      FactoryGirl.create_list(:movie, 54)
    end

    describe "index" do
      it "returns full page size" do
        get :index
        expect(json.size).to eq(50)
      end

      it "returns empty when outside page limit" do
        get :index, params: { page: 100 }
        expect(json.size).to eq(0)
      end

      it "formats currency" do
        get :index
        expect(json[0]["budget"]).to eq("$50,000,000.00")
      end
    end
  end
end
