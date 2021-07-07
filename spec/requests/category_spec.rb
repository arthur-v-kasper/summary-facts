require 'rails_helper'

describe "Category API", type: :request do  
  describe "GET /categories" do            
    it "returns all gategories" do
      FactoryBot.create(:category, title: "Tech", description: "description test")    
      FactoryBot.create(:category, title: "Games", description: "description test")
  
      get "/api/v1/categories"
  
      expect(response).to have_http_status(:success)      
      expect(response.body).to include("Games")
      expect(JSON.parse(response.body)["data"].size).to eq(14)

    end

  end
end
