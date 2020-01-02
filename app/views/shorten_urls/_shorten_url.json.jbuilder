json.extract! shorten_url, :id, :original_url, :short_url, :created_at
json.url shorten_url_url(shorten_url, format: :json)
