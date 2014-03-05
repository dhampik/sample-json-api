json.array!(@items) do |item|
  json.extract! item, :id, :name, :desc
  json.image "#{request.protocol}#{request.host_with_port}#{item.image.url(:thumb)}"
  json.url item_url(item, format: :json)
end
