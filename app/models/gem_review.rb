class GemReview < ActiveRecord::Base
  def name
    URI(gem_github).path.split('/').last
  end
end
