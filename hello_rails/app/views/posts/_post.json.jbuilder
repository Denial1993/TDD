json.extract! post, :id, :title, :content, :is_available, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
