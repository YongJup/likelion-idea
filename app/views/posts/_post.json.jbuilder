json.extract! post, :id, :title, :location, :image, :mount, :zoom, :distance, :F, :Is, :content, :price, :created_at, :updated_at
json.url post_url(post, format: :json)
