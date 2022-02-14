require 'rails_helper'

RSpec.describe "PlanetSearchSpecs", type: :request do
  describe "GET /planets?search=Melmac" do
    before do
      Planet.create("name": "Tatooine") 
      Planet.create("name": "Melmac")
    end
    it "Search for Melmac and gets Melmac" do
      get "/planets?search=Melmac"    
      expect(JSON.parse(response.body)["results"][0]["name"]).to eq("Melmac")
    end    
    it "Search for Tatooine and gets Tatooine" do
      get "/planets?search=Tatooine"    
      expect(JSON.parse(response.body)["results"][0]["name"]).to eq("Tatooine")
    end    
    it "Search for tatoo and gets Tatooine" do
      get "/planets?search=tatoo"    
      expect(JSON.parse(response.body)["results"][0]["name"]).to eq("Tatooine")
    end    
    it "Search for mac and gets Melmac" do
      get "/planets?search=mac"    
      expect(JSON.parse(response.body)["results"][0]["name"]).to eq("Melmac")
    end    
  end
end


