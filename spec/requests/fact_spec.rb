require 'rails_helper'

describe "Facts API", type: :request do
  describe "GET /facts" do
    it "returns all facts" do
      categ = FactoryBot.build(:category, title: "category")
      FactoryBot.create(:fact, title: "Fake1", summary: "description test", category: categ)
      FactoryBot.create(:fact, title: "Fake2", summary: "description test", category: categ)
      FactoryBot.create(:fact, title: "Fake3", summary: "description test", category: categ)
      FactoryBot.create(:fact, title: "Fake4", summary: "description test", category: categ)
      get "/api/v1/facts"
  
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)["data"].size).to eq(4)  
    end

    it "return a fact by slug" do
      categ = FactoryBot.create(:category, title: "category")
      FactoryBot.create(:fact, title: "Fake7", summary: "description test", category: categ)
      fact = FactoryBot.create(:fact, title: "filter slug", summary: "description test", category: categ)      
      get "/api/v1/facts/#{fact.slug}"

      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).size).to eq(1)  
    end

  end

  describe "POST /facts" do
    it "create a fact" do
      categ = FactoryBot.create(:category, title: "category")
      
      expect {
        post "/api/v1/facts", params: { fact: {title: "create", summary: "description create", category_id: categ.id} }
      }.to change { Fact.count }.from(0).to(1)

      expect(response).to have_http_status(201)
    end
  end

  describe "DELETE /fact" do
    it "delete a post" do
      categ = FactoryBot.build(:category, title: "category")
      fact = FactoryBot.create(:fact, title: "delete", summary: "description test", category: categ)

      delete "/api/v1/facts/#{fact.slug}"

      expect(response).to have_http_status(:no_content)

    end
  end
end