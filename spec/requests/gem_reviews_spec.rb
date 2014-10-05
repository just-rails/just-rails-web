require 'rails_helper'

RSpec.describe "GemReviews", :type => :request do
  describe "GET /gem_reviews" do
    it "works! (now write some real specs)" do
      get gem_reviews_path
      expect(response).to have_http_status(200)
    end
  end
end
