require 'rails_helper'

RSpec.describe "gem_reviews/new", :type => :view do
  before(:each) do
    assign(:gem_review, GemReview.new())
  end

  it "renders new gem_review form" do
    render

    assert_select "form[action=?][method=?]", gem_reviews_path, "post" do
    end
  end
end
