require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /static_pages" do
    it "homeアクションにリクエストすると正常にレスポンスが返ってくる" do
      get static_pages_home_path
      expect(response.status).to eq 200
      expect(response.body).to include("title", "Home | Ruby on Rails Tutorial Sample App")
    end
    it "helpアクションにリクエストすると正常にレスポンスが返ってくる" do
      get static_pages_help_path
      expect(response.status).to eq 200
      expect(response.body).to include("title", "Help | Ruby on Rails Tutorial Sample App")
    end
    it "aboutアクションにリクエストすると正常にレスポンスが返ってくる" do
      get static_pages_about_path
      expect(response.status).to eq 200
      expect(response.body).to include("title", "About | Ruby on Rails Tutorial Sample App")
    end
  end
end
