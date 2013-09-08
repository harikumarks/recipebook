require "spec_helper"

describe PrestepsController do
  describe "routing" do

    it "routes to #index" do
      get("/presteps").should route_to("presteps#index")
    end

    it "routes to #new" do
      get("/presteps/new").should route_to("presteps#new")
    end

    it "routes to #show" do
      get("/presteps/1").should route_to("presteps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/presteps/1/edit").should route_to("presteps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/presteps").should route_to("presteps#create")
    end

    it "routes to #update" do
      put("/presteps/1").should route_to("presteps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/presteps/1").should route_to("presteps#destroy", :id => "1")
    end

  end
end
