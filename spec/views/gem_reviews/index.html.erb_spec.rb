require 'rails_helper'

RSpec.describe "gem_reviews/index", :type => :view do
  before(:each) do
    assign(:gem_reviews, [
      GemReview.create!(),
      GemReview.create!()
    ])
  end

  it "renders a list of gem_reviews" do
    render
  end
end
