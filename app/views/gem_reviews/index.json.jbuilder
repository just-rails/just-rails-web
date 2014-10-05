json.array!(@gem_reviews) do |gem_review|
  json.extract! gem_review, :id
  json.url gem_review_url(gem_review, format: :json)
end
