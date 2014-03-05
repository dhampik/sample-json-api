json.extract! @item, :id, :name, :desc, :created_at, :updated_at
json.image "#{request.protocol}#{request.host_with_port}#{@item.image.url(:thumb)}"
