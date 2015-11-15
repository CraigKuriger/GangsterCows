json.array!(@cows) do |cow|
  json.extract! cow, :id, :name, :description, :image_url, :image
  json.url cow_url(cow, format: :json)
end
