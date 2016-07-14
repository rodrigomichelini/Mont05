json.array!(@products) do |product|
  json.extract! product, :id, :name, :image, :partnum, :manufacturer, :platform
  json.url product_url(product, format: :json)
end