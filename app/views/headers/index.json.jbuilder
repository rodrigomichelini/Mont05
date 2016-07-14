json.array!(@headers) do |header|
  json.extract! header, :id, :name, :image, :partnum, :creator, :manufacturer, :platform
  json.url header_url(header, format: :json)
end
