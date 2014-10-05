require "rails_helper"

RSpec.describe GemReviewsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gem_reviews").to route_to("gem_reviews#index")
    end

    it "routes to #new" do
      expect(:get => "/gem_reviews/new").to route_to("gem_reviews#new")
    end

    it "routes to #show" do
      expect(:get => "/gem_reviews/1").to route_to("gem_reviews#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gem_reviews/1/edit").to route_to("gem_reviews#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gem_reviews").to route_to("gem_reviews#create")
    end

    it "routes to #update" do
      expect(:put => "/gem_reviews/1").to route_to("gem_reviews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gem_reviews/1").to route_to("gem_reviews#destroy", :id => "1")
    end

  end
end
