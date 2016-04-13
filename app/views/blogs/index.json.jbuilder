json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :body, :zombie_id
  json.url blog_url(blog, format: :json)
end
