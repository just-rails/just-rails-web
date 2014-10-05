require 'rails_helper'

RSpec.describe "gem_reviews/show", :type => :view do
  before(:each) do
    @gem_review = assign(:gem_review, GemReview.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
