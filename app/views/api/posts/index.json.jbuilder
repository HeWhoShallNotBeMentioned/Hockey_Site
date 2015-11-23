json.array! @posts do |post|
  json.extract! post, :id, :title, :body, :url
  json.post_url api_post_url(post)

  json.user do |user|
    json.extract! post.user, :id, :username, :email
  end
end
