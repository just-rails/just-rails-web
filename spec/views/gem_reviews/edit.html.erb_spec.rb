require 'rails_helper'

RSpec.describe "gem_reviews/edit", :type => :view do
  before(:each) do
    @gem_review = assign(:gem_review, GemReview.create!())
  end

  it "renders the edit gem_review form" do
    render

    assert_select "form[action=?][method=?]", gem_review_path(@gem_review), "post" do
    end
  end
end
