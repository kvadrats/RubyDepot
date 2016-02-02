json.array!(@products) do |product|
  json.extract! product, :title, :string, :description, :text, :imge_url, :price
  json.url product_url(product, format: :json)
end