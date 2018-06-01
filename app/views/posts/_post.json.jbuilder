json.extract! post, :id, :title, :location, :image, r:mount, :zoom, :distance, :F, :Is, :price, :created_at, :updated_at
json.url post_url(post, format: :json)
