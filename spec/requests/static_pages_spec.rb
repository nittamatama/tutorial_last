require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /static_pages" do
    it "homeアクションにリクエストすると正常にレスポンスが返ってくる" do
      get static_pages_home_path
      expect(response.status).to eq 200
    end
    it "helpアクションにリクエストすると正常にレスポンスが返ってくる" do
      get static_pages_help_path
      expect(response.status).to eq 200
    end
  end
end
