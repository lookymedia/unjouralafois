json.array!(@links) do |link|
  json.extract! link, :id, :title, :message
  json.url link_url(link, format: :json)
end
